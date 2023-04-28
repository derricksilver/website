import 'package:flutter/material.dart';
import 'package:webpage/pages/homepage/HPBUTTONS.dart';
import 'package:webpage/pages/homepage/hhmmm.dart';
import 'package:webpage/pages/homepage/home.dart';
import 'package:webpage/pages/modulepage.dart';
import 'package:webpage/widgets/landingwidgets/textbutton.dart';
class LargeScreen extends StatefulWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEEFE3),
      body: Container(
        padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 40),
        // I used the media query to the size of the width of the container
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                //   SizedBox(height: 150),
                // SizedBox(width: 100),
                Text("Titan",
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
                      Text("Welcome Fiifi",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'GR')),
                    ],
                  ),
                ),
                // SizedBox(width: 20),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(300, 50, 0, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      TB(
                        text: "HADES",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return anotherone();
                              }));
                        },
                      ),
                      buildSizedBox(),
                      TB(
                        text: "Zeus",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Home(text: "Zeus");
                              }));
                        },
                      ),
                      buildSizedBox(),
                      TB(
                        text: "Loki",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return HBP();
                              }));
                        },
                      ),
                      buildSizedBox(),
                      TB(
                        text: "Kratos",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return modpage();
                              }));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Row(
                    children: [
                      TB(
                        text: "Poseidon",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Home(text: "Poseidon");
                              }));
                        },
                      ),
                      buildSizedBox(),
                      TB(
                        text: "Ares",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Home(text: "Ares");
                              }));
                        },
                      ),
                      buildSizedBox(),
                      TB(
                        text: "Thor",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Home(text: "Thor");
                              }));
                        },
                      ),
                      buildSizedBox(),
                      TB(
                        text: "Apollo",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Home(text: "Apollo");
                              }));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Row(
                    children: [
                      TB(
                        text: "Hermes",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Home(text: "Hermes");
                              }));
                        },
                      ),
                      buildSizedBox(),
                      TB(
                        text: "Chronos",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Home(text: "Chronos");
                              }));
                        },
                      ),
                      buildSizedBox(),
                      TB(
                        text: "Athena",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Home(text: "Athena");
                              }));
                        },
                      ),
                      buildSizedBox(),
                      TB(
                        text: "Odin",
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Home(text: "Odin");
                              }));
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox() => SizedBox(width: 100);
}
