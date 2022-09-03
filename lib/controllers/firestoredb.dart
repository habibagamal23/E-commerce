import '../models/products.dart';
import '../services/firebase_firestore.dart';
import '../utilits/api_path.dart';

abstract class Database {
  Stream<List<Products>> salesProductsStream();
  Stream<List<Products>> newProductsStream();
}

class FirestoreDatabase implements Database {
  final String uid;
  final _service = FirestoreServices.instance;

  FirestoreDatabase(this.uid);

  @override
  Stream<List<Products>> salesProductsStream() => _service.collectionsStream(
        path: ApiPath.products(),
        builder: (data, documentId) => Products.fromMap(data!, documentId),
        queryBuilder: (query) => query.where('discountValue', isNotEqualTo: 0),
      );

  @override
  Stream<List<Products>> newProductsStream() => _service.collectionsStream(
        path: ApiPath.products(),
        builder: (data, documentId) => Products.fromMap(data!, documentId),
      );
}
