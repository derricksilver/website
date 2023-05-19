import 'package:flutter/material.dart';
import 'package:webpage/pages/homepage/HPBUTTONS.dart';
import 'package:webpage/pages/homepage/home.dart';
import 'package:webpage/pages/homepage/jon.dart';
import 'package:webpage/pages/landingpage.dart';
import 'package:get/get.dart';
import 'package:webpage/pages/signinpage.dart';
import 'package:webpage/repository/authentication_repository/Authentication_Repository.dart';
import 'package:webpage/widgets/landingwidgets/textbutton.dart';

class Housepage extends StatefulWidget {
  Housepage({Key? key}) : super(key: key);

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
                Row(
                  children: [
                    Text("Welcome fiifi",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'GR')),
                    SizedBox(width: 50),
                    IconButton(
                        onPressed: () {
                          AuthRepo.instance.logout();
                          // Get.to(signinP());
                        },
                        icon: Icon(Icons.directions_run))
                  ],
                )
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
                    Get.to(Zeus(text: "QA",));
                  }),
              TB(
                text: "Loki",
                onPress: () {
                  Get.to(Zeus(
                    text: "csc",
                  ));
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
                  // Get.to(Zeus(text: "amandi",));
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
                  // Get.to(Zeus(text: "superlock",));
                },
              ),

              TB(
                text: "Thor",
                onPress: () {
                  // Get.to(Zeus(text: "noc",));
                },
              ),
              // SizedBox(width: 100),

              TB(
                text: "Apollo",
                onPress: () {
                  // Get.to(Zeus(text: "data centre",));
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
                  // Get.to(Zeus(text: "applications",));
                },
              ),
              TB(
                text: "Athena",
                onPress: () {
                  // Get.to(Zeus(text: "cyberhawk",));
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
