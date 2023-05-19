import 'package:flutter/material.dart';
import 'package:webpage/pages/homepage/House.dart';
import 'package:webpage/pages/signinpage.dart';
import 'package:webpage/widgets/Elevatedbutton.dart';
import 'package:webpage/widgets/textformfield.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
        SizedBox(height: 20),
        Text(
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
        ),
        SizedBox(height: 30),
        TFF(
            Ltext: "Username",
            FF: "GR",
            icon: Icons.mail,
            /*controller: personusername*/),
        SizedBox(height: 30.0),
        TFF(
            Ltext: "Password",
            FF: "GR",
            icon: Icons.lock,
          /*  controller: personpassword*/),
        SizedBox(height: 30.0),
        EVB(
          text: "Sign In",
          onPress: () {
            /* if (_formkey.currentState!.validate()) {
              PersonDetails personDetails = PersonDetails();
              personDetails.personusername = personusername.text;
              personDetails.personpassword = personpassword.text;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return Housepage(personDetails: personDetails);
                  }));
            }*/
          },
        ),
        SizedBox(height: 30),
        Padding(
            padding: const EdgeInsets.only(right: 130),
            child: TextButton(
              onPressed: () {

                /* showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Signdialog();
                    });*/
              },
              child: Text(
                "Dont Have An Account?!",
                style: TextStyle(fontFamily: "GR", color: Color(0xFFFEEFE3)),
              ),
            ))
      ],
    );
  }
}
