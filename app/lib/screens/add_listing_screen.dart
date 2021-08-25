import 'package:app/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class AddListingScreen extends StatefulWidget {
  @override
  _AddListingScreenState createState() => _AddListingScreenState();
}

class _AddListingScreenState extends State<AddListingScreen> {
  final itemNameFieldController = TextEditingController();
  final itemPriceFieldController = TextEditingController();

  @override
  Widget build(BuildContext) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFADCD9),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 210.0,
            height: 210.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(14.0)),
            child: Icon(
              Icons.add,
              size: 45.0,
              color: Color(0xff363636),
            ),
          ),
          SizedBox(height: 40.0),
          Transform.translate(
            offset: Offset(-120.0, 0),
            child: Text(
              "Item Name",
              style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
            ),
          ),
          SizedBox(height: 5.0),
          customInputField(
              hintText: "Fresh Tilipia Fish",
              controller: itemNameFieldController),
          SizedBox(height: 13.0),
          Transform.translate(
            offset: Offset(-135.0, 0),
            child: Text(
              "Price",
              style: TextStyle(fontSize: 14.0, color: Color(0xff671b1b)),
            ),
          ),
          SizedBox(height: 5.0),
          customInputField(
              hintText: "RM69.99", controller: itemPriceFieldController),
          SizedBox(height: 40.0),
          ElevatedButton(
            onPressed: () {
              if (itemNameFieldController.text.isEmpty ||
                  itemPriceFieldController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please fill in all fields")));
                return;
              }
              Navigator.pop(context, {
                "item": itemNameFieldController.text.trim(),
                "price": itemPriceFieldController.text.trim()
              });
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(125))),
                backgroundColor: MaterialStateProperty.all(Color(0xfff4948a))),
            child: Container(
              width: 200.0,
              height: 48.0,
              alignment: Alignment.center,
              child: Text(
                "Confirm",
                style: TextStyle(fontSize: 18.0, color: Color(0xff380F0F)),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
