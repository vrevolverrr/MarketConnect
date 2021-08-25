import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

void registerUser(
    userName, userPhoneNumber, userPassword, userConfirmPassword) {
  if (userPassword == userConfirmPassword) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'userName': userName, // John Doe
            'userPhoneNumber': userPhoneNumber, // Stokes and Sons
            'userPassword': userPassword // 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }
  } else {}
}
