import 'package:flutter/material.dart';
/*import 'package:webpage/pages/homepage/HPBUTTONS.dart';
import 'package:webpage/pages/homepage/hhmmm.dart';
import 'package:webpage/pages/homepage/home.dart';
import 'package:webpage/pages/landingpagetypes/large_screen.dart';
import 'package:webpage/pages/modulepage.dart';
import 'package:webpage/widgets/landingwidgets/textbutton.dart';*/

class LandPage extends StatefulWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  State<LandPage> createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEFE3),
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
              child: Container(
            // margin: const EdgeInsets.fromLTRB(25, 23, 18, 23),
            margin: const EdgeInsets.fromLTRB(50, 70, 18, 70),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(2.5),
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
                    icon: Icon(
                      Icons.dashboard_customize_outlined,
                      color: Color(0xFFFEEFE3),
                    ),
                    label: Text('Dashboard',
                        style: TextStyle(color: Color(0xFFFEEFE3))),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.notification_important,
                        color: Color(0xFFFEEFE3)),
                    label: Text(
                      'Notification',
                      style: TextStyle(color: Color(0xFFFEEFE3)),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.task, color: Color(0xFFFEEFE3)),
                    label: Text('Task',
                        style: TextStyle(color: Color(0xFFFEEFE3))),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.wechat_sharp, color: Color(0xFFFEEFE3)),
                    label: Text('Chat',
                        style: TextStyle(color: Color(0xFFFEEFE3))),
                  ),
                  NavigationRailDestination(
                    icon:
                        Icon(Icons.settings_suggest, color: Color(0xFFFEEFE3)),
                    label: Text('Settings',
                        style: TextStyle(color: Color(0xFFFEEFE3))),
                  )
                ],
              ),
            ), /*Column(
                children: [
                DrawerHeader(child: Text("T",style: TextStyle(color:Color(0xFFFEEFE3)),)),
                ListTile(onTap: () {
                },leading: Icon(Icons.dashboard_customize_outlined,color:Color(0xFFFEEFE3) ,),title: Text("Dashboard",style: TextStyle(color:Color(0xFFFEEFE3))),),
                  ListTile(onTap: () {
                  },leading: Icon(Icons.calendar_month_outlined,color:Color(0xFFFEEFE3)),title: Text("Schedule",style: TextStyle(color:Color(0xFFFEEFE3))),),
                  ListTile(onTap: () {
                  },leading: Icon(Icons.wechat_sharp,color:Color(0xFFFEEFE3)),title: Text("Chats",style: TextStyle(color:Color(0xFFFEEFE3))),),
                  ListTile(onTap: () {
                  },leading: Icon(Icons.notification_important,color:Color(0xFFFEEFE3)),title: Text("Notifications",style: TextStyle(color:Color(0xFFFEEFE3))),),
                  ListTile(onTap: () {
                  },leading: Icon(Icons.settings_suggest,color:Color(0xFFFEEFE3)),title: Text("Settings",style: TextStyle(color:Color(0xFFFEEFE3))),)
              ],),*/
          )),
          Expanded(
            flex: 5,
            child: Container(
              // margin: const EdgeInsets.fromLTRB(0, 23, 20, 23),

              margin: const EdgeInsets.fromLTRB(0, 70, 50, 70),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Column(children: const []),
            ),
          )
        ],
      )),
    );
  }
}
