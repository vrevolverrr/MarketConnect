import 'package:flutter/material.dart';

Widget listingItem(String item, String price) {
  return Container(
    width: double.infinity,
    height: 60.0,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(color: Color(0x302e2e2e))),
    ),
    child: Row(
      children: [
        Image.asset("assets/img/avacado.png"),
        SizedBox(width: 15.0),
        Text("${item} (${price})"),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.delete),
            ),
          ),
        )
      ],
    ),
  );
}
