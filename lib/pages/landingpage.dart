import 'package:flutter/material.dart';
import 'package:webpage/pages/homepage/HPBUTTONS.dart';
import 'package:webpage/pages/homepage/home.dart';
import 'package:webpage/pages/homepage/home1.dart';
import 'package:webpage/widgets/Elevatedbutton.dart';
import 'package:webpage/widgets/textbuttonicon.dart';
import 'package:webpage/widgets/textformfield.dart';

class LandPage extends StatefulWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  State<LandPage> createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEEFE3),
      body: Container(
        padding: EdgeInsets.only(left: 20.0,),
        // I used the media query to the size of the width of the container
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
         //   SizedBox(height: 150),
           // SizedBox(width: 100),
            Text("BET4L",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'GR')),
           // SizedBox(width: 1400),
      
      // So i wraped the buttons in expanded to take up the remaning space 
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                // I commentend this out
                               height: 650,
                                width: 580,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      //Comment this our and see too
                                      SizedBox(height: 40),
                                      Text(
                                        "Sign In",
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFFEEFE3),
                                            fontFamily: "GR"),
                                      ),
                                      SizedBox(height: 40),
                                      TBI(
                                          text: "Sign In With Google",
                                          icon: Icons.g_translate),
                                      SizedBox(height: 30),
                                      TBI(
                                          text: "Sign In With Apple",
                                          icon: Icons.apple),
                                      SizedBox(height: 30),
                                      TFF(Ltext: "Email", FF: "TR", icon: Icons.mail),
                                      SizedBox(height: 20),
                                      TFF(
                                          Ltext: "Password",
                                          FF: "TR",
                                          icon: Icons.lock),
                                      SizedBox(height: 30),
                                      EVB(
                                        text: "Login",
                                        onPress: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) {
                                            return Home();
                                          }));
                                        },
                                      ),
                                      SizedBox(height: 30),
                                      EVB(
                                        text: "Why You Forget Password??",
                                        onPress: () {},
                                      ),
                                      SizedBox(height: 50),
                                      Text(
                                        "You No Get Account?? Oya Go Back Then Sign Up Jon",
                                        style: TextStyle(
                                            fontFamily: "TR", color: Color(0xFFFEEFE3)),
                                        textAlign: TextAlign.left,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },  
                        child: Text("Sign In",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: 'GR')),
                      ),
                      TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 650,
                          width: 580,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                SizedBox(height: 40),
                                Text(
                                  "       The Only Way Is Bet                                                 ",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFEEFE3),
                                      fontFamily: "GR"),
                                ),
                                Center(
                                  child: Text(
                                    "Join Us",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFEEFE3),
                                        fontFamily: "GR"),
                                  ),
                                ),
                                
                                SizedBox(height: 70),
                                TBI(
                                    text: "Sign In With Google",
                                    icon: Icons.g_translate),
                                SizedBox(height: 30),
                                TBI(text: "Sign In With Apple", icon: Icons.apple),
                                SizedBox(height: 120),
                                EVB(
                                  text: "Create Account",
                                  onPress: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return HBP();
                                        }));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'GR')),
              ),
                ],
              ),
            ),

            SizedBox(width: 20),


          ],
        ),
      ),
    );
  }
}
