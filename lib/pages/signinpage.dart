import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webpage/authentications/controllers/signup_controller.dart';
import 'package:webpage/pages/homepage/House.dart';
import 'package:webpage/repository/authentication_repository/Authentication_Repository.dart';
import '../widgets/Elevatedbutton.dart';
import '../widgets/textformfield.dart';

class signinP extends StatefulWidget {
  const signinP({Key? key}) : super(key: key);

  @override
  State<signinP> createState() => _signinPState();
}

final controller = Get.put(SignUpController());

final _formkey = GlobalKey<FormState>();

class _signinPState extends State<signinP> {
  bool _showLoginForm = true;
  bool _hm = true;

  void _toggleForm() {
    setState(() {
      _showLoginForm = !_showLoginForm;
    });
  }

  void _toggleye() {
    setState(() {
      _hm = !_hm;
    });
  }

  Widget _buildSignIn() {
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
          showme: false,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Invalid Email";
            } else
              null;
          },
          controller: controller.email,
          Ltext: "Email",
          FF: "GR",
          icon: Icons.person,
        ),
        SizedBox(height: 30.0),
        TFF(
          showme: _hm,
          sufficon: IconButton(
            onPressed: () {
              setState(() {
                _toggleye();
              });
            },
            icon: Icon(
              Icons.remove_red_eye,
              color: Color(0xFFFEEFE3),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Wrong Password";
            } else
              null;
          },
          controller: controller.password,
          Ltext: "Password",
          FF: "GR",
          icon: Icons.lock,
        ),
        SizedBox(height: 30.0),
        EVB(
          text: "Sign In",
          onPress: () {
            if (_formkey.currentState!.validate()) {
              AuthRepo.instance.loginWithEmailandPassword(
                  controller.email.text.trim(),
                  controller.password.text.trim());
            }
            // Get.to(Housepage());
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

  Widget _buildSignUp() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20),
        TFF(
          showme: false,
          controller: controller.username,
          Ltext: "UserName",
          FF: "GR",
          icon: Icons.person,
        ),
        SizedBox(height: 20),
        TFF(
          showme: false,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Enter valid email";
            } else
              null;
          },
          controller: controller.email,
          Ltext: "Email",
          FF: "GR",
          icon: Icons.mail,
        ),
        SizedBox(height: 20),
        TFF(
          showme: false,
          controller: controller.phonenumber,
          Ltext: "Phone Number",
          FF: "GR",
          icon: Icons.numbers,
        ),
        SizedBox(height: 30.0),
        TFF(
          showme: _hm,
          sufficon: IconButton(
            onPressed: () {
              setState(() {
                _toggleye();
              });
            },
            icon: Icon(
              Icons.remove_red_eye,
              color: Color(0xFFFEEFE3),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Enter strong password";
            } else
              null;
          },
          controller: controller.password,
          Ltext: "Password",
          FF: "GR",
          icon: Icons.lock,
        ),
        SizedBox(height: 30.0),
        EVB(
          text: "Sign Up",
          onPress: () {
            if (_formkey.currentState!.validate()) {
              SignUpController.instance.registerUser(
                  controller.email.text.trim(),
                  controller.password.text.trim());
            }
          },
        ),
        SizedBox(height: 10),
        Text(
          "OR",
          style: TextStyle(color: Color(0xFFFEEFE3), fontFamily: "GR"),
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
            icon: /*Image(image: AssetImage(""), width: 10.0),*/
                Icon(Icons.g_translate, color: Colors.black),
            label: Text(
              "Sign Up With Google",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "GR",
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
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
              height: 600.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black),
              child: _showLoginForm ? _buildSignIn() : _buildSignUp()),
        ),
      ),
    );
  }

  Color cream() => Color(0xFFFEEFE3);
}
