import 'package:flutter/material.dart';

class TBI extends StatelessWidget {
 late String text;
  late IconData icon;

  TBI({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFFFEEFE3)),
            minimumSize: MaterialStateProperty.all<Size>(Size(320, 40)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        onPressed: () {},
        icon: Icon(icon, color: Colors.black),
        label: Text(text,
            style: TextStyle(
                color: Colors.black,
                fontFamily: "TR",
                fontWeight: FontWeight.bold,
                fontSize: 15)));
  }
}
