import 'package:flutter/material.dart';
import 'package:webpage/pages/homepage/HPBUTTONS.dart';
import 'package:webpage/pages/homepage/hhmmm.dart';
import 'package:webpage/pages/homepage/home.dart';
import 'package:webpage/pages/landingpage.dart';
import 'package:webpage/pages/signinpage.dart';
import 'package:webpage/widgets/landingwidgets/textbutton.dart';

import '../../models/Person_model.dart';

class Housepage extends StatefulWidget {
  Housepage({Key? key, required this.personDetails}) : super(key: key);
  PersonDetails personDetails;

  @override
  State<Housepage> createState() => _HousepageState();
}

class _HousepageState extends State<Housepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEFE3),
      body: Column(children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Titan",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'GR')),
                Text("Welcome " + personemail.text,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'GR'))
              ],
            )),
        Container(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /* TB(
                text: "HADES",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return anotherone();
                  }));
                },
              ),*/
              TB(
                text: "Zeus",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(text: "Zeus");
                  }));
                },
              ),
              TB(
                text: "Loki",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HBP();
                  }));
                },
              ),
            /*  TextButton.icon(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFEEFE3)),
                      minimumSize: MaterialStateProperty.all<Size>(Size(320, 40)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {},
                  icon: Icon(Icons.access_time_outlined, color: Color(0xFFFEEFE3)),
                  label: Text("M",
                      style: TextStyle(
                          color: Color(0xFFFEEFE3),
                          fontFamily: "TR",
                          fontWeight: FontWeight.bold,
                          fontSize: 15))),
              TextButton.icon(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFEEFE3)),
                      minimumSize: MaterialStateProperty.all<Size>(Size(320, 40)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit_outlined, color: Color(0xFFFEEFE3)),
                  label: Text("k",
                      style: TextStyle(
                          color:Color(0xFFFEEFE3),
                          fontFamily: "TR",
                          fontWeight: FontWeight.bold,
                          fontSize: 15)))*/
              /* TB(
                text: "Kratos",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(text: "Kratos");
                  }));
                },
              ),*/
            ],
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TB(
                text: "Poseidon",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(text: "Poseidon");
                  }));
                },
              ),
              /*TB(
                    text: "Ares",
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Home(text: "Ares");
                      }));
                    },
                  ),*/
              TB(
                text: "Ares",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(text: "Ares");
                  }));
                },
              ),

              TB(
                text: "Thor",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LandPage();
                  }));
                },
              ),
              // SizedBox(width: 100),

              TB(
                text: "Apollo",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(text: "Apollo");
                  }));
                },
              ),
            ],
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /* TB(
                text: "Hermes",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(text: "Hermes");
                  }));
                },
              ),*/
              TB(
                text: "Chronos",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(text: "Chronos");
                  }));
                },
              ),
              TB(
                text: "Athena",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(text: "Athena");
                  }));
                },
              ),
              /*    TB(
                text: "Odin",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(text: "Odin");
                  }));
                },
              ),*/
            ],
          )
        ]))
      ]),
    );
  }

  SizedBox buildSizedBox() => SizedBox(width: 200);
}
