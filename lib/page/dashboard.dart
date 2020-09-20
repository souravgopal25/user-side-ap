import 'package:flutter/material.dart';
import 'package:user_side_ap/slider/slider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DashBoardSlider(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  child: Text(
                    "Report Annomously",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  child: Text(
                    "Report & Track",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  child: Text(
                    "Alerts",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  child: Text(
                    "News",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
