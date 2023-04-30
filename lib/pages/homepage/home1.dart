import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue.shade200,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.black87,
              height: 300,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}