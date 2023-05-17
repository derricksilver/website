import 'package:flutter/material.dart';

class TFF extends StatelessWidget {
  late String Ltext, FF;
  late IconData icon;
  TextEditingController? controller;


  TFF({Key? key, required this.Ltext, required this.FF, required this.icon, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "massa enter the thing. Idiot!!!";
              } else
                null;
            },
            style: TextStyle(color: Color(0xFFFEEFE3)),
            decoration: InputDecoration(
              errorStyle: TextStyle(color: Color(0xFFFEEFE3)),
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
      ],
    );
  }
}
