import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_dev_final/models/UserModel.dart';
import 'package:google_sign_in/google_sign_in.dart';


 

class AuthenticationService{
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User?> get authStateChange => _firebaseAuth.authStateChanges();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      String uid = userCredential.user!.uid;
      DocumentSnapshot userData = await FirebaseFirestore.instance.collection('users').doc(uid).get();
      return UserModel.fromMap(userData.data() as Map<String, dynamic>);
    } catch (e) {
      throw e;
    }
  }

  Future<void> signUp(String email,String password) async {
    UserCredential? credential;
    try{
     credential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email,password: password);
     

    }
    on FirebaseAuthException catch(e){
      print(e.code.toString());
    }
      
      if(credential!=null)
      {
        String uid=credential.user!.uid;
        UserModel newUser = UserModel(
          uid: uid,
          email: email,
          fullname:"",
          );
        await FirebaseFirestore.instance.collection("users").doc(uid).set(newUser.toMap());
        print("user created");

      }

  }
  Future<UserModel?> signInWithGoogle() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        final UserCredential userCredential = await _auth.signInWithCredential(credential);

        String uid = userCredential.user!.uid;
        DocumentSnapshot userData = await FirebaseFirestore.instance.collection('users').doc(uid).get();
        return UserModel.fromMap(userData.data() as Map<String, dynamic>);
      }
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }
}