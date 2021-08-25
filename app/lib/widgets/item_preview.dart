import 'package:flutter/material.dart';

class ItemPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset("assets/img/avacado.png"),
          ),
        ),
        SizedBox(height: 5.0),
        SizedBox(
          width: 85.0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Avacado"),
          ),
        )
      ],
    );
  }
}
