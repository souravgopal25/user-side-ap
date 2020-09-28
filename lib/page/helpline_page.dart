import 'package:flutter/material.dart';

class Helpline extends StatelessWidget {
  const Helpline({Key key}) : super(key: key);

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
        child: Center(
          child: Card(
            child: ListView(
              children: <Widget>[
                Text(
                  "Helpline",
                  textScaleFactor: 3.5,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "DG Control",
                  textScaleFactor: 3.5,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "0361-2521242",
                  textScaleFactor: 3.5,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "City Police Control",
                  textScaleFactor: 3.5,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "0361-2464557/8",
                  textScaleFactor: 3.5,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Dial 100",
                  textScaleFactor: 3.5,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
