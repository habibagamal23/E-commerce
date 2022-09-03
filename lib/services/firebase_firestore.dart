import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreServices {
  FirestoreServices._();
  static final instance = FirestoreServices._();

  final _firestore = FirebaseFirestore.instance;

//method set data
  Future<void> setData(
      {required String path, required Map<String, dynamic> data}) async {
    final ref = _firestore.doc(path);

    debugPrint('Request Data: $data');

    await ref.set(data);
  }
// method delete

  Future<void> delete({required String path}) async {
    final ref = _firestore.doc(path);
    debugPrint('Path: $path');
    await ref.delete();
  }

// method doc

  Stream<T> docStreem<T>(
      {required String path,
      required T Function({required Map<String, dynamic>? data, String docid})
          builder}) {
    final ref = _firestore.doc(path);
    final snapshot = ref.snapshots();
    return snapshot
        .map((snapshot) => builder(data: snapshot.data(), docid: snapshot.id));
  }

// method collections
  Stream<List<T>> collectionsStream<T>({
    required String path,
    required T Function(Map<String, dynamic>? data, String documentId) builder,
    Query Function(Query query)? queryBuilder,
    int Function(T lhs, T rhs)? sort,
  }) {
    Query query = _firestore.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = query.snapshots();
    return snapshots.map((snapshot) {
      final result = snapshot.docs
          .map(
            (snapshot) => builder(
              snapshot.data() as Map<String, dynamic>,
              snapshot.id,
            ),
          )
          .where((value) => value != null)
          .toList();
      if (sort != null) {
        result.sort(sort);
      }
      return result;
    });
  }
}
