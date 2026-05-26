import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Stream of Auth User Changes
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // Get Current user
  User? currentUser() {
    return _firebaseAuth.currentUser;
  }

  // Sign In With Email & Password
  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final UserCredential userCredentials = await _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password);

    return userCredentials;
  }

  // Sign Out
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
