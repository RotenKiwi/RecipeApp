import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;

Future<bool> signIn(String emailAddress, String password) async{
  try {
    final credential = await auth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password
    );
    print('Logged In');
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
    return false;
  }
}