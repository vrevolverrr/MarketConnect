import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void loginUser(userPhoneNumber, userPassword, userType, callback) async {
  await Firebase.initializeApp();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  print(userType);

  var loginSuccess = false;

  if (userType == false) {
    //user
    // Create a CollectionReference called users that references the firestore collection
    FirebaseFirestore.instance
        .collection('users')
        .where('userPhoneNumber', isEqualTo: userPhoneNumber)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        if (doc["userPassword"] == userPassword) {
          loginSuccess = true;
          print("Customer login success");
          callback();
        } else {}
      });
    });
  } else {
    //merchant
    FirebaseFirestore.instance
        .collection('merchant')
        .where('merchantPhoneNumber', isEqualTo: userPhoneNumber)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        if (doc["merchantPassword"] == userPassword) {
          loginSuccess = true;
          print("Merchant login success");
          callback();
        } else {
          print("nope meng");
        }
      });
    });
  }
}
