import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future signInwithEmail(String email, String pass) async {
    var result =
        await _auth.signInWithEmailAndPassword(email: email, password: pass);
    User user = result.user;
    print(user.uid);
    return user;
  }

  Future signupWithEmail(
      String name, String phone, String email, String pass) async {
    try {
      var result = await _auth.createUserWithEmailAndPassword(
          email: email, password: pass);
      User firebaseUser = result.user;

      firebaseUser.updateProfile(displayName: name);

      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> signOut() async {
    return Future.wait([_auth.signOut()]);
  }

  Future<bool> isSignedIn() async {
    final currentUser = await _auth.currentUser;
    return currentUser != null;
  }

  Future<FirebaseUser> getUser() async {
    return await _auth.currentUser;
  }

  Future forgotPass(String e) async {
    try {
      await _auth.sendPasswordResetEmail(email: e);
      return Future.value("SUCCESS");
    } catch (e) {
      return Future.error(e);
    }
  }
}
