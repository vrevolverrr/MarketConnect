import 'package:flutter/material.dart';

Widget searchResultItem(
    String title, String price, String merchant, String phoneNumber) {
  return Container(
    margin: EdgeInsets.all(20.0),
    height: 120.0,
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset("assets/img/avacado.png"),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16.0, color: Color(0xff671B1B)),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    "(${price})",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Text(
                merchant,
                style: TextStyle(fontSize: 12.0),
              ),
              SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(125))),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xfff4948a))),
                child: Container(
                  width: 70.0,
                  height: 15.0,
                  alignment: Alignment.center,
                  child: Text(
                    "Contact",
                    style: TextStyle(fontSize: 14.0, color: Color(0xff380F0F)),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
