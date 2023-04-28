import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 10),
        color: Color(0xFFFEEFE3),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(50, 50, 15, 50),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120, top: 10),
                    child: Text("Kraken",
                        style: TextStyle(
                          fontFamily: "GR",
                          color: Color(0xFFFEEFE3),
                          fontSize: 25,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Divider(
                      color: Color(0xFFFEEFE3),
                      height: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150, top: 10),
                    child: TextButton.icon(
                        onPressed: () {
                          /* Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HPB();
                          }));*/
                        },
                        icon: Icon(Icons.dashboard_customize_outlined,
                            color: Color(0xFFFEEFE3)),
                        label: Text(
                          "DashBoard",
                          style: TextStyle(
                              fontFamily: "TR", color: Color(0xFFFEEFE3)),
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150, top: 10),
                    child: TextButton.icon(
                        onPressed: () {
                          /* Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HPB();
                          }));*/
                        },
                        icon: Icon(Icons.dashboard_customize_outlined,
                            color: Color(0xFFFEEFE3)),
                        label: Text(
                          "Projects",
                          style: TextStyle(
                              fontFamily: "TR", color: Color(0xFFFEEFE3)),
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170, top: 10),
                    child: TextButton.icon(
                        onPressed: () {
                          /* Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HPB();
                          }));*/
                        },
                        icon: Icon(Icons.dashboard_customize_outlined,
                            color: Color(0xFFFEEFE3)),
                        label: Text(
                          "Tasks",
                          style: TextStyle(
                              fontFamily: "TR", color: Color(0xFFFEEFE3)),
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170, top: 10),
                    child: TextButton.icon(
                        onPressed: () {
                          /* Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HPB();
                          }));*/
                        },
                        icon: Icon(Icons.dashboard_customize_outlined,
                            color: Color(0xFFFEEFE3)),
                        label: Text(
                          "Chats",
                          style: TextStyle(
                              fontFamily: "TR", color: Color(0xFFFEEFE3)),
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 140, top: 10),
                    child: TextButton.icon(
                        onPressed: () {
                          /* Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HPB();
                          }));*/
                        },
                        icon: Icon(Icons.notification_important,
                            color: Color(0xFFFEEFE3)),
                        label: Text(
                          "Notifications",
                          style: TextStyle(
                              fontFamily: "TR", color: Color(0xFFFEEFE3)),
                        )),
                  )
                ]),
              ),
            ),
            // SizedBox(
            //   width: 100,
            // ),

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
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 25, 850, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFEEFE3),
                            hintText: 'Search',
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    width: 1470,
                    height: /*300,*/ 440,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: Column(children: []),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
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
            )
          ],
        ),
      ),
    );
  }
}
