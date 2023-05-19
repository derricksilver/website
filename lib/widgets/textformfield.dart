import 'package:flutter/material.dart';

class TFF extends StatelessWidget {
  late String Ltext, FF;
  late IconData icon;
  late TextEditingController? controller;
  late String? Function(String?)? validator;
  late Widget? sufficon;
  late bool? showme;

  TFF(
      {Key? key,
      required this.Ltext,
      required this.FF,
      required this.icon,
      this.controller,
      this.validator,
      this.sufficon,
      this.showme = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
            obscureText: showme!,
            controller: controller,
            validator: validator,
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
              suffixIcon: sufficon,
              labelStyle: TextStyle(color: Color(0xFFFEEFE3), fontFamily: FF),
            )),
      ],
    );
  }
}
