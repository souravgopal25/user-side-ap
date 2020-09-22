import 'package:flutter/material.dart';
import 'package:user_side_ap/card/drawer_card.dart';

import 'package:user_side_ap/page/alerts.dart';
import 'package:user_side_ap/page/news_page.dart';
import 'package:user_side_ap/page/report/firpage1.dart';
import 'package:user_side_ap/page/reportanonymous/anonymous_fir_page1.dart';
import 'package:user_side_ap/page/updates.dart';
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
        child: SingleChildScrollView(
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
                    elevation: 10,
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => AnonymousRegistration()));
                    },
                    child: Text(
                      "Report Annomously",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    elevation: 10,
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => UserRegistration()));
                    },
                    child: Text(
                      "Report & Track",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    elevation: 10,
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Updates()));
                    },
                    child: Text(
                      "Updates",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    elevation: 10,
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Alerts()));
                    },
                    child: Text(
                      "Alerts",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    elevation: 10,
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => NewsPage()));
                    },
                    child: Text(
                      "News",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
      drawer: Menu(),
    );
  }
}
