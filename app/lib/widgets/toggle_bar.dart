import 'package:flutter/material.dart';

class ToggleBarController {
  bool toggled = false;
}

class ToggleBar extends StatefulWidget {
  ToggleBar({required this.controller});

  final ToggleBarController controller;

  @override
  _ToggleBarState createState() => _ToggleBarState(controller);
}

class _ToggleBarState extends State<ToggleBar> {
  _ToggleBarState(this.controller);

  final ToggleBarController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295.0,
      height: 45.0,
      decoration: BoxDecoration(
          color: Color(0x84e69b93), borderRadius: BorderRadius.circular(30.0)),
      child: Stack(
        children: <Widget>[
          AnimatedAlign(
            duration: Duration(milliseconds: 220),
            curve: Curves.fastOutSlowIn,
            alignment: !controller.toggled
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Container(
              width: 153.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0c000000),
                    blurRadius: 4,
                    offset: Offset(2, 0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    setState(() {
                      controller.toggled = false;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 140.0,
                    height: 40.0,
                    child: Transform.translate(
                      offset: Offset(0.0, 1.0),
                      child: Text(
                        "Customer",
                        style:
                            TextStyle(color: Color(0xff671b1b), fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    setState(() {
                      controller.toggled = true;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 140.0,
                    height: 40.0,
                    child: Transform.translate(
                      offset: Offset(-4.0, 1.0),
                      child: Text(
                        "Merchant",
                        style:
                            TextStyle(color: Color(0xff671b1b), fontSize: 16.0),
                      ),
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
}
