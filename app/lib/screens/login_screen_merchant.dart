import 'package:flutter/material.dart';

class LoginScreenMerchant extends StatefulWidget {
  @override
  _LoginScreenMerchantState createState() => _LoginScreenMerchantState();
}

class _LoginScreenMerchantState extends State<LoginScreenMerchant> {
  final fullNameFieldController = TextEditingController();
  final phoneNumberFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  final confirmPasswordFieldController = TextEditingController();

  // To determine whether to display login fields or registration fields
  // Full Name and Confirm Password fields or hidden if `false`
  bool isRegistration = true;

  Widget inputFieldWidget(
      {required String hintText, required TextEditingController controller}) {
    return SizedBox(
        width: 320.0,
        child: TextField(
          controller: controller,
          style: TextStyle(height: 1.6),
          decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 1.0, horizontal: 12.0)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isRegistration
                ? "Merchant Registration Screen"
                : "Merchant Login Screen"),
            SizedBox(
              height: 15.0, // Spacing
            ),
            isRegistration
                ? inputFieldWidget(
                    hintText: "Full Name", controller: fullNameFieldController)
                : SizedBox(),
            SizedBox(
              height: isRegistration ? 10.0 : 0.0, // Spacing
            ),
            inputFieldWidget(
                hintText: "Phone Number",
                controller: phoneNumberFieldController),
            SizedBox(
              height: 10.0, // Spacing
            ),
            inputFieldWidget(
                hintText: "Password", controller: passwordFieldController),
            SizedBox(
              height: 10.0, // Spacing
            ),
            isRegistration
                ? inputFieldWidget(
                    hintText: "Confirm Password",
                    controller: confirmPasswordFieldController)
                : SizedBox(),
            SizedBox(
              height: isRegistration ? 10.0 : 0.0, // Spacing
            ),
            SizedBox(
              width: 320.0,
              height: 40.0,
              child: ElevatedButton(
                  onPressed: () => {
                        // TODO REGISTER
                        // check for isRegistration to decide whether to login
                        // or register an account
                      },
                  child: Text(isRegistration ? "Register" : "Login")),
            ),
            SizedBox(height: 15.0),
            isRegistration
                ? GestureDetector(
                    onTap: () => {
                      setState(() {
                        isRegistration = false;
                      })
                    },
                    child: Text(
                      "Already registered? Login to your account",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                : GestureDetector(
                    onTap: () => {
                      setState(() {
                        isRegistration = true;
                      })
                    },
                    child: Text(
                      "Don't have an account? Register an account",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
