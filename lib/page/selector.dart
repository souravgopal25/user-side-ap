import 'package:flutter/material.dart';
import 'package:user_side_ap/page/login_page.dart';

class Selector extends StatelessWidget {
  const Selector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.white70,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text("Report Annomously"),
            ),
            MaterialButton(
              color: Colors.white70,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text("Login & Report"),
            )
          ],
        ),
      ),
    );
  }
}
