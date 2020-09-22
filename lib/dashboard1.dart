import 'package:flutter/material.dart';
import 'package:user_side_ap/card/drawer_card.dart';

import 'package:user_side_ap/slider/slider.dart';

class Dashboard1 extends StatelessWidget {
  const Dashboard1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DashBoardSlider(),
              ),
            ],
          ),
        ),
      ),
      drawer: Menu(),
    );
  }
}
