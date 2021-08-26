import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> registerUser(
    String userName,
    String userPhoneNumber,
    String userPassword,
    String userConfirmPassword,
    bool userType,
    Function callback,
    BuildContext context) async {
  if (userPassword == userConfirmPassword) {
    await Firebase.initializeApp();
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    if (userType == false) {
      //user
      // Create a CollectionReference called users that references the firestore collection
      CollectionReference users = firestore.collection('users');
      return users.doc(userPhoneNumber).set({
        'userName': userName,
        'userPhoneNumber': userPhoneNumber,
        'userPassword': userPassword,
      }).then((_) {
        callback();
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Successfully registered")));
      });
    } else {
      // Create a CollectionReference called merchant that references the firestore collection
      CollectionReference users = firestore.collection('merchant');
      return users.doc(userPhoneNumber).set({
        'userName': userName,
        'userPhoneNumber': userPhoneNumber,
        'userPassword': userPassword,
        'listings': [],
      }).then((_) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Successfully registered")));
        callback();
      });
    }
  }
}
