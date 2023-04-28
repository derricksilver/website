import 'package:flutter/material.dart';

class EVB extends StatelessWidget {
  String text;
  final VoidCallback onPress;
  EVB({Key? key, required this.text, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: Color(0xFFFEEFE3),
          minimumSize: Size(350, 40),
        ),
        child: Text(text,style: TextStyle(color: Colors.black,fontFamily: "GR",fontWeight: FontWeight.bold,fontSize: 15),));

  }
}
