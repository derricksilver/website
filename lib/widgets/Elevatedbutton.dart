import 'package:flutter/material.dart';

class EVB extends StatelessWidget {
  String text;

  EVB({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: Color(0xFFFEEFE3),
          minimumSize: Size(320, 40),
        ),
        child: Text(text,style: TextStyle(color: Colors.black,fontFamily: "TR",fontWeight: FontWeight.bold,fontSize: 15),));

  }
}
