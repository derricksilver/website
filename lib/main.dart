import 'package:flutter/material.dart';
import 'package:webpage/pages/landingpage.dart';
import 'package:webpage/pages/signinpage.dart';
// import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const Fool());
}

class Fool extends StatelessWidget {
  const Fool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(  home: signinP());
  }
}
