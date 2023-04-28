import 'package:flutter/material.dart';

class modpage extends StatefulWidget {
  const modpage({Key? key}) : super(key: key);

  @override
  State<modpage> createState() => _modpageState();
}

class _modpageState extends State<modpage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEEFE3),
        body:Padding(
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
      ),
    );
  }
}
