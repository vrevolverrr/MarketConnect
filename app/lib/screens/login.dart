import 'package:app/widgets/toggle_bar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final fullNameFieldController = TextEditingController();
  final phoneNumberFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  final confirmPasswordFieldController = TextEditingController();

  Widget customInputField(
      {required String hintText, required TextEditingController controller}) {
    return SizedBox(
      width: 330.0,
      height: 42.0,
      child: TextField(
        controller: controller,
        style: TextStyle(height: 1.6),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
          hintStyle: TextStyle(color: Color(0xffCFCFCF)),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50)),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFADCD9),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60.0),
            ToggleBar(),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Full Name",
              style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
            ),
            SizedBox(height: 5.0),
            customInputField(
                hintText: "John Wick", controller: fullNameFieldController),
            SizedBox(height: 12.0),
            Text(
              "Phone Number",
              style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
            ),
            SizedBox(height: 5.0),
            customInputField(
                hintText: "016-3302542", controller: fullNameFieldController),
            SizedBox(height: 12.0),
            Text(
              "Password",
              style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
            ),
            SizedBox(height: 5.0),
            customInputField(
                hintText: "Abc123@", controller: fullNameFieldController),
            SizedBox(height: 12.0),
            Text(
              "Confirm Password",
              style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
            ),
            SizedBox(height: 5.0),
            customInputField(
                hintText: "Abc123@", controller: fullNameFieldController),
            SizedBox(height: 12.0),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0))),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
