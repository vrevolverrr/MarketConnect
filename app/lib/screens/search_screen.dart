import 'package:app/backend/search.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Widget> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    width: 365.0,
                    height: 42.0,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(71, 43, 40, 0.05),
                          offset: Offset(0, 2.0),
                          spreadRadius: 2.0,
                          blurRadius: 12.0),
                    ]),
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(height: 1.8),
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: Color(0xff5C5C5C),
                            iconSize: 18.0,
                            onPressed: () => Navigator.pop(context)),
                        hintText: "Chicken, Fish, Fruits...",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        hintStyle: TextStyle(color: Color(0xffCFCFCF)),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      onSubmitted: (String query) async {
                        searchItem(query).then((value) => setState(() {
                              searchResults = value;
                            }));
                      },
                    ),
                  ),
                ))
              ],
            ),
            Expanded(
                child: ListView(
              children: searchResults,
            ))
          ],
        ),
      ),
    );
  }
}
