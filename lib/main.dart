import 'package:flutter/material.dart';
import 'package:user_side_ap/page/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: "ASSAM POLICE",
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  const MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
