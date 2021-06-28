import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  bool success = true;

  final String uid;
  DatabaseService({ this.uid });

  String businessName = '';
  String firstName = '';
  String lastName = '';
  String email = '';
  String phoneNumber = '';

  final CollectionReference usersInfoCollectionReference = FirebaseFirestore.instance.collection('users');

  Future<void> registerUserData(String businessName, String firstName, String lastName, String phoneNumber, String email, String refCode) {
    // Call the userData CollectionReference to add a new user
    return usersInfoCollectionReference
      .doc(uid)
      .set({
        'business_name': businessName,
        'first_name': firstName,
        'last_name': lastName,
        'business_phone': phoneNumber,
        'email': email,
      })
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  }

  Future<void> updateUserData(String businessName, String firstName, String lastName, String phoneNumber, String email) {
    return usersInfoCollectionReference
      .doc(uid)
      .update({
        'business_name': businessName,
        'first_name': firstName,
        'last_name': lastName,
        'business_phone': phoneNumber,
        'email': email,
      })
      .then((value) => print("User Updated"))
      .catchError((error) {
        print("Failed to update user: $error");
        success = false;
      }
    );
  }

}