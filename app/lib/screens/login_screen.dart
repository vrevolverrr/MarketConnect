import 'package:app/screens/login_screen_customer.dart';
import 'package:app/screens/login_screen_merchant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: currentIndex > 0
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                  _pageController.animateToPage(0,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.fastOutSlowIn);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              )
            : null,
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login Screen"),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () => {
                    setState(() {
                      currentIndex = 1;
                    }),
                    _pageController.animateToPage(1,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.fastOutSlowIn)
                  },
                  child: Text("I'm a customer"),
                ),
                ElevatedButton(
                  onPressed: () => {
                    setState(() {
                      currentIndex = 2;
                    }),
                    _pageController.animateToPage(2,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.fastOutSlowIn)
                  },
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
