import 'package:courierhub/models/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'database_service.dart';

class AuthService{
  

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on Firebase user
  UserModel _userFromFirebase(User user){
    return user!=null? UserModel(uid:user.uid):null;
  }

  //auth change user stream
  Stream<UserModel> get user{
    return _auth.authStateChanges()
      // .map((User user) => _userFromFirebase(user));
      .map(_userFromFirebase);
  }

  //sign in anonymously
  Future signInAnon() async{
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and pssword
  Future signInWithEmailAndPassword(email, password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      if(user != null){
        print('logged in');
        return user;
      }
    }on FirebaseAuthException catch (e){
      print(e.toString());
      return null;
    }
  }

  //register with email and password
  Future registerWithEmailAndPassword(String firstname, String lastname, String email, String password, String businessName, String phone, String refCode) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      print(user.uid);
      //create a new document for the registering user
      await DatabaseService(uid: user.uid).registerUserData(businessName, firstname, lastname, phone, email, refCode);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //log user out
  Future logOut() async {
    try {
      return _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}