import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:webpage/firebase_options.dart';
import 'package:webpage/pages/signinpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Fool());
}

class Fool extends StatelessWidget {
  const Fool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: signinP());
  }
}
