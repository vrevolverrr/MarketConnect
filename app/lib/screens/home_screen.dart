import 'package:app/widgets/item_preview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 470.0,
              color: Color(0xffFADCD9),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      SizedBox(height: 25.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        width: 350.0,
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
                      SizedBox(
                        height: 30.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Featured",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(71, 43, 40, 0.3),
                                  spreadRadius: 0.0,
                                  blurRadius: 12.0)
                            ], borderRadius: BorderRadius.circular(14.0)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14.0),
                              child: Image.asset(
                                "assets/img/advertisement.png",
                                width: 365.0,
                                height: 210.0,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 365.0,
                                height: 54.0,
                                decoration: BoxDecoration(
                                  color: Color(0xffF4948A),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0)),
                                ),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Ali's Vegetable Stall @ Taman Pertama",
                                            style: TextStyle(fontSize: 14.0),
                                          ),
                                          Text(
                                            "2.3 km away",
                                            style: TextStyle(
                                                fontSize: 11.0, height: 1.6),
                                          )
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Goods near you",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Vegetables",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Fruits",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Meat",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: ItemPreview(),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
