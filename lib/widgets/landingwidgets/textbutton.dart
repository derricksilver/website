import 'package:flutter/material.dart';

class TB extends StatelessWidget {
  late String text;
  final VoidCallback onPress;
  TB({Key? key, required this.text, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            minimumSize:
            MaterialStateProperty.all<Size>(Size(120, 120)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5))),
            backgroundColor:
            MaterialStateProperty.all<Color>(Colors.black)),
        onPressed: onPress,
        child: Text(text,style: TextStyle(fontFamily: "GR",color: Color(0xFFFEEFE3)),));
  }
}
