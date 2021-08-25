import 'package:flutter/material.dart';

class LoginScreenMerchant extends StatefulWidget {
  @override
  _LoginScreenMerchantState createState() => _LoginScreenMerchantState();
}

class _LoginScreenMerchantState extends State<LoginScreenMerchant> {
  final fullNameFieldController = TextEditingController();
  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  final confirmPasswordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Merchant Login Screen"),
            SizedBox(
              height: 15.0,
            ),
            SizedBox(
                width: 320.0,
                child: TextField(
                  controller: fullNameFieldController,
                  style: TextStyle(height: 1.6),
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 12.0)),
                )),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
                width: 320.0,
                child: TextField(
                  controller: emailFieldController,
                  style: TextStyle(height: 1.6),
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 12.0)),
                )),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
                width: 320.0,
                child: TextField(
                  controller: passwordFieldController,
                  style: TextStyle(height: 1.6),
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 12.0)),
                )),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
                width: 320.0,
                child: TextField(
                  controller: confirmPasswordFieldController,
                  style: TextStyle(height: 1.6),
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 12.0)),
                )),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 320.0,
              height: 40.0,
              child: ElevatedButton(
                  onPressed: () => {
                        // TODO REGISTER
                        print("pressed")
                      },
                  child: Text("Register")),
            ),
            SizedBox(height: 15.0),
            GestureDetector(
              onTap: () => {
                // TODO REGISTER
                print("pressed")
              },
              child: Text(
                "Already registered? Login to your account",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
