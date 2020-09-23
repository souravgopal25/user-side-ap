import 'package:flutter/material.dart';

class Helpline extends StatelessWidget {
  const Helpline({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              Text("Helpline"),
              Text("DG Control"),
              Text("0361)-2521242"),
              Text("City Police Control"),
              Text("0361)-2464557/8"),
              Text("Dial 100"),
            ],
          ),
        ),
      ),
    );
  }
}
