import 'package:app/screens/login_screen_customer.dart';
import 'package:app/screens/login_screen_merchant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login Screen"),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () => {print("pressed")},
                  child: Text("I'm a customer"),
                ),
                ElevatedButton(
                  onPressed: () => {print("pressed")},
                  child: Text("I'm a merchant"),
                ),
              ],
            ),
          ),
          LoginScreenCustomer(),
          LoginScreenMerchant()
        ],
      ),
    );
  }
}
