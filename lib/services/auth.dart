import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User? get currentUser;
  Stream<User?> stateChange();
  Future<User?> signIn(String email, String pass);
  Future<User?> signUp(String email, String pass);
  Future<void> logout();
}

class AuthControll implements AuthBase {
  final firebase = FirebaseAuth.instance;

  @override
  User? get currentUser => firebase.currentUser;

  @override
  Future<void> logout() async => await firebase.signOut();

  @override
  Future<User?> signIn(String email, String pass) async {
    final authuser =
        await firebase.signInWithEmailAndPassword(email: email, password: pass);
    return authuser.user;
  }

  @override
  Future<User?> signUp(String email, String pass) async {
    final authuser = await firebase.createUserWithEmailAndPassword(
        email: email, password: pass);
    return authuser.user;
  }

  @override
  Stream<User?> stateChange() => firebase.authStateChanges();
}
