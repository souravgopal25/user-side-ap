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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                //TODO button does't looks good as of now
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: <Color>[
                          Color(0xFF396AFC),
                          Color(0xFF2948FF)
                        ])),
                        child: Text(
                          "Report Anonymously",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: <Color>[
                          Color(0xFF396AFC),
                          Color(0xFF2948FF)
                        ])),
                        child: Text(
                          "Report",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                      Color(0xFF396AFC),
                      Color(0xFF2948FF)
                    ])),
                    child: Text(
                      "Alerts",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                      Color(0xFF396AFC),
                      Color(0xFF2948FF)
                    ])),
                    child: Text(
                      "News",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
