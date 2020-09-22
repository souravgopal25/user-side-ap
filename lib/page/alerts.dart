import 'package:flutter/material.dart';
import 'package:user_side_ap/card/alert_card.dart';

class Alerts extends StatelessWidget {
  const Alerts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alerts"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [AlertCard(), AlertCard()],
        ),
      ),
    );
  }
}
