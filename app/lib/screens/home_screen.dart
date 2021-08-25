import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            color: Color(0xffFADCD9),
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 335.0,
              height: 48.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white),
            ),
          )),
        ],
      ),
    );
  }
}
