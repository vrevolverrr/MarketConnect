import 'package:app/widgets/advertisement_box.dart';
import 'package:app/widgets/shop_preview.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            SizedBox(
              width: 340.0,
              child: TextField(
                controller: searchFieldController,
                style: TextStyle(height: 1.6),
                decoration: InputDecoration(
                    hintText: "Search",
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1.0, horizontal: 12.0)),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: AdvertisementBox(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: AdvertisementBox(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text("Goods near you"),
                )),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: ShopPreview(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: ShopPreview(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: ShopPreview(),
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
