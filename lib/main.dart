import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:user_side_ap/page/alerts.dart';
import 'package:user_side_ap/page/helpline_page.dart';

import 'package:user_side_ap/page/login_page.dart';

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
            return Helpline();
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
