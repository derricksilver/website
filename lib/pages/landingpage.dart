import 'package:flutter/material.dart';

class LandPage extends StatefulWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  State<LandPage> createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEEFE3),
      body: Row(
        children: [
          SizedBox(height: 150),
          SizedBox(width: 100),
          Text("BET4L",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'GR')),
          SizedBox(width: 1400),
          TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 650,
                        width: 580,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFEEFE3),
                                    fontFamily: "GR"),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                  decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFFEEFE3))),
                                prefixIcon: Icon(
                                  Icons.verified,
                                  color: Color(0xFFFEEFE3),
                                ),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    color: Color(0xFFFEEFE3), fontFamily: "TR"),
                              )),
                              SizedBox(height: 20),
                              TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFEEFE3))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFFEEFE3))),
                                      prefixIcon: Icon(
                                        Icons.verified,
                                        color: Color(0xFFFEEFE3),
                                      ),
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                          color: Color(0xFFFEEFE3),
                                          fontFamily: "TR"),
                                      border: const OutlineInputBorder())),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text("Sign In",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'GR'))),
          SizedBox(width: 20),
          TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 650,
                      width: 580,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFEEFE3),
                                  fontFamily: "GR"),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFEEFE3))),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFEEFE3))),
                                    prefixIcon: Icon(
                                      Icons.verified,
                                      color: Color(0xFFFEEFE3),
                                    ),
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                        color: Color(0xFFFEEFE3),
                                        fontFamily: "TR"),
                                    border: const OutlineInputBorder())),
                            SizedBox(height: 20),
                            TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFEEFE3))),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFEEFE3))),
                                    prefixIcon: Icon(
                                      Icons.verified,
                                      color: Color(0xFFFEEFE3),
                                    ),
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                        color: Color(0xFFFEEFE3),
                                        fontFamily: "TR"),
                                    border: const OutlineInputBorder())),
                            ElevatedButton(
                              onPressed: () {
                                // Do something when the button is pressed
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                minimumSize: Size(300, 50),
                              ),
                              child: Text('Sign up with Google'),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Text("Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'GR')),
          )
        ],
      ),
    );
  }
}
