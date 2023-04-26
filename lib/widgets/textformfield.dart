import 'package:flutter/material.dart';

class TFF extends StatelessWidget {
  String Ltext, FF;
  IconData icon;

  TFF({Key? key, required this.Ltext, required this.FF, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
          child: TextFormField(
              style: TextStyle(color: Color(0xFFFEEFE3)),
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.all(5),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFEEFE3))),
                prefixIcon: Icon(
                  icon,
                  color: Color(0xFFFEEFE3),
                ),
                labelText: Ltext,
                labelStyle: TextStyle(color: Color(0xFFFEEFE3), fontFamily: FF),
              )),
        ),
      ],
    );
  }
}
