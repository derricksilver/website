import 'package:flutter/material.dart';

class HBP extends StatefulWidget {
  const HBP({Key? key}) : super(key: key);

  @override
  State<HBP> createState() => _HBPState();
}

class _HBPState extends State<HBP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        toolbarHeight: 100,
        centerTitle: true,
        title: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.import_contacts_sharp,
              color: Colors.blueAccent,
            )),
      ),
      drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.brown),
                accountName: Text("Grace Jon"),
                accountEmail: Text("graceghansa@jonmail.com"),
                currentAccountPicture:
                CircleAvatar(foregroundImage: AssetImage("images/graceee.jpg")),
                otherAccountsPictures: [
                  CircleAvatar(foregroundImage: AssetImage("images/graceee.jpg")),
                  CircleAvatar(foregroundImage: AssetImage("images/graceee.jpg"))
                ],
              ),
              ListTile(
                leading: Icon((Icons.home_outlined), color: Colors.brown),
                title: Text("Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.brown)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_outline_outlined, color: Colors.brown),
                title: Text("Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.brown)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart_outlined, color: Colors.brown),
                title: Text("Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.brown)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.bookmark_border_outlined, color: Colors.brown),
                title: Text("Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.brown)),
                onTap: () {},
              )
            ],
          )),
    );
  }
}
