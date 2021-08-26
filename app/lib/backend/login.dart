import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void loginUser(String userPhoneNumber, String userPassword, bool userType,
    Function callback, BuildContext context) async {
  await Firebase.initializeApp();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  if (userType == false) {
    // Create a CollectionReference called users that references the firestore collection
    firestore
        .collection('users')
        .where('userPhoneNumber', isEqualTo: userPhoneNumber)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        if (doc["userPassword"] == userPassword) {
          callback();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Successfully logged in")));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Incorrect email or password")));
        }
      });
    });
  } else {
    firestore
        .collection('merchant')
        .where('merchantPhoneNumber', isEqualTo: userPhoneNumber)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        if (doc["merchantPassword"] == userPassword) {
          callback();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Incorrect email or password")));
        }
      });
    });
  }
}
