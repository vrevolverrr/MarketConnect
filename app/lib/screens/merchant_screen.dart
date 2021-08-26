import 'dart:math';
import 'package:app/screens/add_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/listings_item.dart';

class MerchantScreen extends StatefulWidget {
  MerchantScreen({required this.phoneNumber});

  final String phoneNumber;

  @override
  _MerchantScreenState createState() => _MerchantScreenState(phoneNumber);
}

class _MerchantScreenState extends State<MerchantScreen> {
  _MerchantScreenState(this.phoneNumber);

  final String phoneNumber;

  final List<Widget> itemListings = [
    listingItem("Fresh Avacado", "RM6.99"),
    listingItem("Tilipia Fish", "RM39.99")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 250.0,
            color: Color(0xffFADCD9),
          ),
          Column(
            children: [
              SizedBox(height: 40.0),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  width: 360.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60.0,
                        height: 60.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Image.asset("assets/img/avacado.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ali bin Abu",
                              style: TextStyle(
                                  color: Color(0xff671B1B), fontSize: 20.0),
                            ),
                            Text(
                              "Taman Pertama",
                              style: TextStyle(
                                  color: Color(0xff671B1B), fontSize: 16.0),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Transform.rotate(
                            angle: pi,
                            child: Transform.translate(
                              offset: Offset(10.0, 0),
                              child: Icon(Icons.arrow_back_ios),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Transform.translate(
                  offset: Offset(-130.0, 0.0),
                  child: Text("My Listings", style: TextStyle(fontSize: 18.0))),
              SizedBox(height: 15.0),
              SizedBox(
                  width: 360.0,
                  height: 440.0,
                  child: ListView(
                    children: itemListings,
                  ))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF4948A),
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => AddListingScreen()))
              .then((value) => setState(() {
                    itemListings
                        .add(listingItem(value["item"], value["price"]));
                  }));
        },
      ),
    );
  }
}
