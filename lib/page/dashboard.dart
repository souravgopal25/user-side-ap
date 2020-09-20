import 'package:flutter/material.dart';
import 'package:user_side_ap/slider/slider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[DashBoardSlider()],
    );
  }
}
