import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

// NOT COMPLETED

void addListing() async {
  await Firebase.initializeApp();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
}

Future<List<Widget>> getListings(String phoneNumber) async {
  await Firebase.initializeApp();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  var userDoc = await firestore.collection('merchant').doc(phoneNumber).get();
  userDoc.data()!['listings'];

  return [Container()];
}
