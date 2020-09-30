import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:user_side_ap/page/dashboard.dart';
import 'package:user_side_ap/page/login_page.dart';
import 'package:user_side_ap/page/qrCodes.dart';
import 'package:user_side_ap/page/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.openBox("FIR1");
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
            return SplashScreen();
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
