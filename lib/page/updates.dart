import 'package:flutter/material.dart';
import 'package:user_side_ap/card/update_card.dart';

class Updates extends StatelessWidget {
  const Updates({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [UpdateCard(), UpdateCard()],
        ),
      ),
    );
  }
}
//TODO FIRESTORE
