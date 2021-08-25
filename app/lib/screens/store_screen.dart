import 'package:app/widgets/advertisement_box.dart';
import 'package:app/widgets/item_preview.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
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
              height: 30.0,
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
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: ItemPreview())),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: ItemPreview())),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: ItemPreview())),
              ],
            ),
            SizedBox(height: 6.0),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: ItemPreview())),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: ItemPreview())),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: ItemPreview())),
              ],
            ),
            SizedBox(height: 6.0),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: ItemPreview())),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: ItemPreview())),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: ItemPreview())),
              ],
            )
          ],
        ),
      ),
    );
  }
}
