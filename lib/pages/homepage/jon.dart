import 'package:flutter/material.dart';
import 'package:webpage/widgets/landingwidgets/Zeus_widgets/analysistile.dart';
import 'package:webpage/widgets/landingwidgets/Zeus_widgets/chatstile.dart';
import 'package:webpage/widgets/landingwidgets/Zeus_widgets/dashboardtile.dart';
import 'package:webpage/widgets/landingwidgets/Zeus_widgets/notificationstile.dart';
import 'package:webpage/widgets/landingwidgets/Zeus_widgets/taskstile.dart';

class Zeus extends StatefulWidget {
  final String text;

  Zeus({Key? key, required this.text}) : super(key: key);

  @override
  State<Zeus> createState() => _ZeusState();
}

class _ZeusState extends State<Zeus> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    dash(),
    tasks(),
    chats(),
    notifs(),
    analysis()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEEFE3),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(40, 40, 18, 40),
                child: Drawer(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          DrawerHeader(
                              child: Center(
                            child: Text(widget.text,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontFamily: "GR",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3))),
                          )),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Divider(
                              color: Color(0xFFFEEFE3),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 40, right: 0),
                            leading: Icon((Icons.dashboard_customize_outlined),
                                color: Color(0xFFFEEFE3)),
                            title: Text("Dashboard",
                                style: TextStyle(
                                    fontFamily: "GR",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3))),
                            selected: _selectedIndex == 0,
                            onTap: () {
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
                            contentPadding:
                                EdgeInsets.only(left: 40, right: 20),
                            leading: Icon(Icons.task, color: Color(0xFFFEEFE3)),
                            title: Text("Tasks",
                                style: TextStyle(
                                    fontFamily: "GR",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3))),
                            trailing: Text("9",
                                style: TextStyle(
                                    fontFamily: "GR",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3))),
                            selected: _selectedIndex == 1,
                            onTap: () {
                              setState(() {
                                _selectedIndex = 1;
                              });
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
                            contentPadding:
                                EdgeInsets.only(left: 40, right: 20),
                            leading: Icon(Icons.wechat_sharp,
                                color: Color(0xFFFEEFE3)),
                            title: Text("Chats",
                                style: TextStyle(
                                    fontFamily: "GR",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3))),
                            trailing: Text("5",
                                style: TextStyle(
                                    fontFamily: "GR",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3))),
                            selected: _selectedIndex == 2,
                            onTap: () {
                              setState(() {
                                _selectedIndex = 2;
                              });
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
                            contentPadding:
                                EdgeInsets.only(left: 40, right: 20),
                            leading: Icon(Icons.notification_important,
                                color: Color(0xFFFEEFE3)),
                            title: Text("Notifications",
                                style: TextStyle(
                                    fontFamily: "GR",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3))),
                            trailing: Text("2",
                                style: TextStyle(
                                    fontFamily: "GR",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3))),
                            selected: _selectedIndex == 3,
                            onTap: () {
                              setState(() {
                                _selectedIndex = 3;
                              });
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ListTile(
                            contentPadding:
                                EdgeInsets.only(left: 40, right: 20),
                            leading:
                                Icon(Icons.analytics, color: Color(0xFFFEEFE3)),
                            title: Text("Analytics",
                                style: TextStyle(
                                    fontFamily: "GR",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3))),
                            selected: _selectedIndex == 4,
                            onTap: () {
                              setState(() {
                                _selectedIndex = 4;
                              });
                            },
                          ),
                          SizedBox(
                            height: 120,
                          ),
                          CircleAvatar(
                            foregroundImage: AssetImage("images/me.jpg"),
                            radius: 40,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Fiifi",
                              style: TextStyle(
                                  fontFamily: "GR",
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFEEFE3))),
                          SizedBox(
                            height: 10,
                          ),
                          Text("fiifi@stlghana.com",
                              style: TextStyle(
                                  fontFamily: "GR",
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFEEFE3)))
                        ],
                      ),
                    )),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 40, 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFEEFE3)),
                  child: _widgetOptions.elementAt(_selectedIndex)),
            )
          ],
        ),
      ),
    );
  }
}
// child: _widgetOptions.elementAt(_selectedIndex),
