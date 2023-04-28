import 'package:flutter/material.dart';

class anotherone extends StatefulWidget {
  const anotherone({Key? key}) : super(key: key);

  @override
  State<anotherone> createState() => _anotheroneState();
}

class _anotheroneState extends State<anotherone> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFFEEFE3),
      body:/*Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 1100, 30),
        child: NavigationRail(
          backgroundColor: Colors.black,
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.all,
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.settings),
              label: Text('Settings'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.person),
              label: Text('Profile'),
            ),
          ],
        ),
      ),*/
      Center(child: Text("$screenWidth    $screenHeight",style: TextStyle(color: Colors.black),))
    );
  }
}


/*
Padding(
padding: const EdgeInsets.fromLTRB(20, 20, 1100, 20),
child: Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20), color: Colors.black),
),
),*/
