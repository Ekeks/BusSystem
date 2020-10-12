import 'package:firebase_auth/firebase_auth.dart';

//signing in
class AuthService {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static signInWithEmail({String email, String password}) async {
    final result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    final User user = result.user;
    return user;
  }
}

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static createInWithEmail({String email, String password}) async {
    final result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    final User user = result.user;
    return user;
  }
}
