import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  String name = "";
  CustomButtons({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          name,
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.grey[800],
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
