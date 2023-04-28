import 'package:flutter/material.dart';

class HBP extends StatefulWidget {
  const HBP({Key? key}) : super(key: key);

  @override
  State<HBP> createState() => _HBPState();
}

class _HBPState extends State<HBP> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Container(
        padding: EdgeInsets.only(left: 20, right: 10),
        color: Color(0xFFFEEFE3),
        child: Row(
          children: [
           Padding(
             padding: EdgeInsets.fromLTRB(50, 50, 15, 50),
             child: Container(
               width: 300,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30), color: Colors.black),
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
           ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Container(
                    width: 1470,
                    height: /*100,*/ 100,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 25, 850, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFEEFE3),
                            hintText: 'Search',
                            suffixIcon: Icon(Icons.search,color: Colors.black,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      )
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    width: 1470,
                    height: /*300,*/ 440,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: Column(children: const []),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Container(
                          width: 730,
                          height: /*100,*/ 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: Column(children: []),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 730,
                          height: /*100,*/ 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: Column(children: []),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
