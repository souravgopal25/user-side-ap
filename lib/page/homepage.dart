import 'package:flutter/material.dart';
import 'package:user_side_ap/page/news_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.white70,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => NewsPage()));
              },
              child: Text("News page"),
            ),
            MaterialButton(
              color: Colors.white70,
              onPressed: () {
                /*Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => LoginPage()));*/
              },
              child: Text("Report Annomously"),
            ),
            MaterialButton(
              color: Colors.white70,
              onPressed: () {
                /* Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => LoginPage()));*/
              },
              child: Text("Report Annomously"),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
