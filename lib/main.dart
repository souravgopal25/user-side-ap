import 'package:flutter/material.dart';
import 'package:user_side_ap/page/dashboard.dart';
import 'package:user_side_ap/page/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:user_side_ap/page/report/firpage1.dart';
import 'package:user_side_ap/page/signup_page.dart';

import 'dashboard1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: "ASSAM POLICE",
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: widget._initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {}
          if (snapshot.connectionState == ConnectionState.done) {
            return Dashboard();
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
