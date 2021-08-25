import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 95.0,
                  color: Color(0xfffadcd9),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    width: 370.0,
                    height: 46.0,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(71, 43, 40, 0.05),
                              offset: Offset(0, 2.0),
                              spreadRadius: 2.0,
                              blurRadius: 12.0),
                        ],
                        color: Colors.white),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xff5C5C5C),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Transform.translate(
                          offset: Offset(0, 1.2),
                          child: Text("Chicken, Fish, Fruits...",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffB6B6B6))),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
