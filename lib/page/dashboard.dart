import 'package:flutter/material.dart';
import 'package:user_side_ap/card/drawer_card.dart';
import 'package:user_side_ap/page/alerts.dart';
import 'package:user_side_ap/page/news_page.dart';
import 'package:user_side_ap/page/report/fir_page1.dart';
import 'package:user_side_ap/page/reportanonymous/anonymous_fir_page1.dart';
import 'package:user_side_ap/page/updates.dart';

import 'package:user_side_ap/slider/slider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/ashoka.jpeg",
                height: 100,
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "GOVERMENT OF ASSAM",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  Text(
                    "ASSAM POLICE",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              )
            ],
          ),
        ),
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text("Report Annomously",
                          style: TextStyle(fontSize: 40, color: Colors.white))
                    ],
                  ),
                ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.report,
                        color: Colors.white,
                        size: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Report a FIR",
                          style: TextStyle(fontSize: 40, color: Colors.white))
                    ],
                  ),
                ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.update,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Updates",
                            style: TextStyle(fontSize: 40, color: Colors.white))
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  elevation: 10,
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Alerts()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_alert,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Alerts",
                          style: TextStyle(fontSize: 40, color: Colors.white))
                    ],
                  ),
                ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.adjust,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("News",
                          style: TextStyle(fontSize: 40, color: Colors.white))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Menu(),
    );
  }
}
