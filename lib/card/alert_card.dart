import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlertCard extends StatelessWidget {
  QueryDocumentSnapshot snapshot;
  AlertCard({
    QueryDocumentSnapshot snapshot1,
  }) : snapshot = snapshot1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Alert Date :",
                    softWrap: true,
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    snapshot.data()["date"],
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Alert Time :",
                    softWrap: true,
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    snapshot.data()["time"],
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                    snapshot.data()["title"],
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                snapshot.data()["title"],
                softWrap: true,
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
