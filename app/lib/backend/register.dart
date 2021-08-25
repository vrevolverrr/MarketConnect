import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void registerUser(userName, userPhoneNumber, userPassword, userConfirmPassword,
    userType) async {
  if (userPassword == userConfirmPassword) {
    await Firebase.initializeApp();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    print(userType);

    if (userType == false) {
      //user
      // Create a CollectionReference called users that references the firestore collection
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');

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

      addUser();
    } else {
      // Create a CollectionReference called merchant that references the firestore collection
      CollectionReference users =
          FirebaseFirestore.instance.collection('merchant');

      Future<void> addMerchant() {
        // Call the user's CollectionReference to add a new user
        return users
            .add({
              'merchantName': userName, // John Doe
              'merchantPhoneNumber': userPhoneNumber, // Stokes and Sons
              'merchantPassword': userPassword // 42
            })
            .then((value) => print("User Added"))
            .catchError((error) => print("Failed to add user: $error"));
      }

      addMerchant();
    }
  } else {}
}
