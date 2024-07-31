import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthFirebaseService {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> register(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        if (kDebugMode) {
          print("The password provided is too weak.");
        }
      } else if (e.code == "email-already-in-use") {
        if (kDebugMode) {
          print("The account exists for that email.");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        if (kDebugMode) {
          print("No user found for that email.");
        }
      } else if (e.code == "wrong-password") {
        if (kDebugMode) {
          print("Wrong password provided for that user.");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> resetPassword({required String email}) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } catch (e) {
      if (kDebugMode) {
        print("Error resetting password: $e");
      }
    }
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}