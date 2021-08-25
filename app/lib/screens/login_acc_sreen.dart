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
  final toggleBarController = ToggleBarController();

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
            ToggleBar(
              controller: toggleBarController,
            ),
            SizedBox(
              height: 30.0,
            ),
            Transform.translate(
              offset: Offset(-120.0, 0),
              child: Text(
                "Full Name",
                style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
              ),
            ),
            SizedBox(height: 5.0),
            customInputField(
                hintText: "John Wick", controller: fullNameFieldController),
            SizedBox(height: 13.0),
            Transform.translate(
              offset: Offset(-105.0, 0),
              child: Text(
                "Phone Number",
                style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
              ),
            ),
            SizedBox(height: 5.0),
            customInputField(
                hintText: "016-3302542", controller: fullNameFieldController),
            SizedBox(height: 13.0),
            Transform.translate(
              offset: Offset(-123.0, 0),
              child: Text(
                "Password",
                style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
              ),
            ),
            SizedBox(height: 5.0),
            customInputField(
                hintText: "Abc123@", controller: fullNameFieldController),
            SizedBox(height: 13.0),
            Transform.translate(
              offset: Offset(-95.0, 0),
              child: Text(
                "Confirm Password",
                style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
              ),
            ),
            SizedBox(height: 5.0),
            customInputField(
                hintText: "Abc123@", controller: fullNameFieldController),
            SizedBox(height: 13.0),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0))),
                    ),
                    Positioned(
                        left: (MediaQuery.of(context).size.width - 200) / 2 -
                            15.0,
                        bottom: 200.0 - 30,
                        child: ElevatedButton(
                          onPressed: () {
                            // use toggleBarController.toggled to check whether customer or merchant;
                            // false is customer true is merchant
                            // use fullNameFieldController.text to read text field
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(125))),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xfff4948a))),
                          child: Container(
                            width: 200.0,
                            height: 48.0,
                            alignment: Alignment.center,
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 18.0, color: Color(0xff380F0F)),
                            ),
                          ),
                        )),
                    Positioned(
                        left: (MediaQuery.of(context).size.width - 155) / 2,
                        bottom: 140.0,
                        child: SizedBox(
                          width: 155.0,
                          child: Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontFamily: "MazzardH-Bold",
                                fontSize: 12.0,
                                color: Color(0xff434343)),
                          ),
                        )),
                    Positioned(
                        left: (MediaQuery.of(context).size.width - 85) / 2,
                        bottom: 105.0,
                        child: SizedBox(
                          width: 85.0,
                          child: Text(
                            "Sign in options",
                            style: TextStyle(
                                fontSize: 12.0, color: Color(0xff434343)),
                          ),
                        )),
                    Positioned(
                        left: (MediaQuery.of(context).size.width - 88) / 2,
                        bottom: 55.0,
                        child: SizedBox(
                          width: 88.0,
                          child: Row(
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color(0xffE9E9E9)),
                                child: Image.asset("assets/img/google.png"),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color(0xffE9E9E9)),
                                child: Image.asset("assets/img/email.png"),
                              )
                            ],
                          ),
                        )),
                    Positioned(
                        left: (MediaQuery.of(context).size.width - 185) / 2,
                        bottom: 15.0,
                        child: SizedBox(
                          width: 185.0,
                          child: Text(
                            "Team 15 @ YMEHackathon2021",
                            style: TextStyle(
                                fontSize: 12.0, color: Color(0xff434343)),
                          ),
                        ))
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
