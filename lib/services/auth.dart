import 'package:courierhub/models/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  

final FirebaseAuth _auth=FirebaseAuth.instance;

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
    UserCredential result=await _auth.signInAnonymously();
    User user=result.user;
    return _userFromFirebase(user);
  } catch (e) {
    print(e.toString());
    return null;
  }
}

//sign in with email and pssword


//register with email and password


//log user out
Future logOut() async {
  try {
    return _auth.signOut();
  } catch (e) {
    print(e.toString());
  }
}
}