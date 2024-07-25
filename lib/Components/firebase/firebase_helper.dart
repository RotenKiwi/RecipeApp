import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore db = FirebaseFirestore.instance;
late User user;

Future<bool> signIn(String emailAddress, String password) async{
  try {
    await auth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password
    );
    user = auth.currentUser!;
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

Future<bool> signUp(String emailAddress, String password) async {
  try {
    await auth.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    user = auth.currentUser!;
    print('Account created, UserId: '+ user.uid);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
    return false;
  } catch (e) {
    print(e);
    return false;
  }
}

Future<bool> createUser(String username) async{
  try {
    await db.collection('users').doc(user.uid).set({'username':username});
    return true;
  } on Exception catch (e) {
    print(e);
    return false;
  }

}