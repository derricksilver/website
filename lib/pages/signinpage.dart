import 'package:flutter/material.dart';
import 'package:webpage/pages/homepage/House.dart';
import 'package:webpage/pages/landingpage.dart';
import '../models/Person_model.dart';
import '../widgets/Elevatedbutton.dart';
import '../widgets/textformfield.dart';

class signinP extends StatefulWidget {
  const signinP({Key? key}) : super(key: key);

  @override
  State<signinP> createState() => _signinPState();
}

var personemail = TextEditingController();
var personpassword = TextEditingController();
final _formkey = GlobalKey<FormState>();

@override
void dispose() {
  personemail.dispose();
  personpassword.dispose();
}

class _signinPState extends State<signinP> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: cream(),
      body: Align(
        alignment: Alignment(-0, -0.5),
        child: Form(
          key: _formkey,
          child: Container(
            width: 350.0,
            // Fixed width
            height: 560.0,
            // Fixed height
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.black),
            child: Column(
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
                      color: cream(),
                      fontFamily: "GR"),
                ),
                Text(
                  "        Integrated      ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: cream(),
                      fontFamily: "GR"),
                ),
                Text(
                  "      Into A Unified System       ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: cream(),
                      fontFamily: "GR"),
                ),
                SizedBox(height: 30),
                TFF(
                    Ltext: "Email",
                    FF: "GR",
                    icon: Icons.mail,
                    controller: personemail),
                SizedBox(height: 30.0),
                TFF(
                    Ltext: "Password",
                    FF: "GR",
                    icon: Icons.lock,
                    controller: personpassword),
                SizedBox(height: 30.0),
                EVB(
                  text: "Sign In",
                  onPress: () {
                    if (_formkey.currentState!.validate()) {
                      PersonDetails personDetails = PersonDetails();
                      personDetails.personemail = personemail.text;
                      personDetails.personpassword = personpassword.text;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Housepage(personDetails: personDetails);
                      }));
                    }
                  },
                ),
                SizedBox(height: 30),
                Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Dont Have An Account?!",
                        style: TextStyle(
                            fontFamily: "GR", color: Color(0xFFFEEFE3)),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
      /*Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(0),color: Colors.black),
        padding: EdgeInsetsGeometry.infinity,*/
      // width: 20
      /* child: Dialog(
          insetPadding: EdgeInsets.fromLTRB(530, 50, 530, 200),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(children: [
            SizedBox(height: 20),
            Text(
              "Titan",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFEEFE3),
                  fontFamily: "GR"),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  Text(
                    "  All Your Company Solutions        ",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: cream(),
                        fontFamily: "GR"),
                  ),
                  Text(
                    "        Integrated      ",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: cream(),
                        fontFamily: "GR"),
                  ),
                  Text(
                    "      Into A Unified System       ",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: cream(),
                        fontFamily: "GR"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            TFF(Ltext: "Email", FF: "GR", icon: Icons.mail),
            SizedBox(height: 40),
            TFF(Ltext: "Password", FF: "GR", icon: Icons.lock),
            SizedBox(height: 40),
            EVB(
              text: "Sign In",
              onPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
// return LandPage();
                  return LandPage();
                }));
              },
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 130),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Dont Have An Account?!",
                  style: TextStyle(fontFamily: "GR", color: Color(0xFFFEEFE3)),
                ),
              ),
            )
          ]),
        ),*/
      // ),
    );
  }

  Color cream() => Color(0xFFFEEFE3);
}
