import 'package:flutter/material.dart';
import 'package:webpage/pages/signinpage.dart';
import 'package:webpage/widgets/Elevatedbutton.dart';
import 'package:webpage/widgets/textformfield.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: 10),
        Text(
          "Titan",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFEEFE3),
              fontFamily: "GR"),
        ),
        // SizedBox(height: 20),
        /*  Text(
        "  All Your Company Solutions        ",
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFEEFE3),
            fontFamily: "GR"),
      ),
      Text(
        "        Integrated      ",
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFEEFE3),
            fontFamily: "GR"),
      ),
      Text(
        "      Into A Unified System       ",
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFEEFE3),
            fontFamily: "GR"),
      ),*/
        SizedBox(height: 30),
        TFF(
          Ltext: "Email",
          FF: "GR",
          icon: Icons.mail,
        ),
        TFF(
          Ltext: "Full Name",
          FF: "GR",
          icon: Icons.person,
        ),
        TFF(
          Ltext: "Phone Number",
          FF: "GR",
          icon: Icons.numbers,
        ),
        SizedBox(height: 30.0),
        TFF(
          Ltext: "Password",
          FF: "GR",
          icon: Icons.lock,
        ),
        SizedBox(height: 30.0),
        EVB(
          text: "Sign Up",
          onPress: () {},
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
