import 'package:flutter/material.dart';
import 'package:webpage/pages/homepage/House.dart';
import 'package:webpage/widgets/signinpagewidgets/signindialog.dart';
import 'package:webpage/widgets/signinpagewidgets/signupdialog.dart';
import '../models/Person_model.dart';
import '../widgets/Elevatedbutton.dart';
import '../widgets/textformfield.dart';

class signinP extends StatefulWidget {
  const signinP({Key? key}) : super(key: key);

  @override
  State<signinP> createState() => _signinPState();
}

var personemail = TextEditingController();
var personusername = TextEditingController();
var personpassword = TextEditingController();
var persondigits = TextEditingController();

final _formkey = GlobalKey<FormState>();

@override
void dispose() {
  personemail.dispose();
  personusername.dispose();
  personpassword.dispose();
  persondigits.dispose();
}

class _signinPState extends State<signinP> {
  bool _showLoginForm = true;

  void _toggleForm() {
    setState(() {
      _showLoginForm = !_showLoginForm;
    });
  }

  Widget _buildsignin() {
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
            icon: Icons.person,
            /*controller: personusername*/),
        SizedBox(height: 30.0),
        TFF(
            Ltext: "Password",
            FF: "GR",
            icon: Icons.lock,
            /*controller: personpassword*/),
        SizedBox(height: 30.0),
        EVB(
          text: "Sign In",
          onPress: () {
            if (_formkey.currentState!.validate()) {
              PersonDetails personDetails = PersonDetails();
              personDetails.personusername = personusername.text;
              personDetails.personpassword = personpassword.text;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Housepage(personDetails: personDetails);
              }));
            }
          },
        ),
        SizedBox(height: 30),
        Padding(
            padding: const EdgeInsets.only(right: 130),
            child: TextButton(
              onPressed: () {
                _toggleForm();
              },
              child: Text(
                "Dont Have An Account?!",
                style: TextStyle(fontFamily: "GR", color: Color(0xFFFEEFE3)),
              ),
            ))
      ],
    );
  }

  Widget _buildsignup() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       /* Text(
          "Titan",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFEEFE3),
              fontFamily: "GR"),
        ),*/
        SizedBox(height: 20),
        TFF(
            Ltext: "UserName",
            FF: "GR",
            icon: Icons.person,
            controller: personusername),
        SizedBox(height: 20),
        TFF(
            Ltext: "Email",
            FF: "GR",
            icon: Icons.mail,
            controller: personemail),
        SizedBox(height: 20),
        TFF(
            Ltext: "Phone Number",
            FF: "GR",
            icon: Icons.numbers,
            controller: persondigits),
        SizedBox(height: 30.0),
        TFF(
            Ltext: "Password",
            FF: "GR",
            icon: Icons.lock,
            controller: personpassword),
        SizedBox(height: 30.0),
        EVB(
          text: "Sign Up",
          onPress: () {},
        ),
        SizedBox(height: 10),
        Text(
          "OR",
          style: TextStyle(color: Color(0xFFFEEFE3),fontFamily: "GR"),
        ),
        SizedBox(height: 10),

        /*EVB(
          text: "Sign Up With Google",
          onPress: () {},
        ),*/
        OutlinedButton.icon(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFFEEFE3)),
                minimumSize: MaterialStateProperty.all<Size>(Size(350, 40))),
            icon: /*Image(image: AssetImage(""), width: 10.0),*/Icon(Icons.g_translate,color: Colors.black),
            label: Text(
              "Sign Up With Google",
              style: TextStyle(color: Colors.black,fontFamily: "GR",fontWeight: FontWeight.bold,fontSize: 15),
            )),
        SizedBox(height: 30),
        Padding(
            padding: const EdgeInsets.only(right: 130),
            child: TextButton(
              onPressed: () {
                setState(() {
                  _showLoginForm = true;
                });
              },
              child: Text(
                "Already Have An Account?!",
                style: TextStyle(fontFamily: "GR", color: Color(0xFFFEEFE3)),
              ),
            ))
      ],
    );
  }

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
              height: 560.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black),
              child: _showLoginForm ? _buildsignin() : _buildsignup()),
        ),
      ),
    );
  }

  Color cream() => Color(0xFFFEEFE3);
}
