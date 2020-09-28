import 'package:flutter/material.dart';

class AlertCard extends StatelessWidget {
  const AlertCard({
    Key key,
  }) : super(key: key);

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
                    "20/09/2020",
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
                    "20:40 AM",
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
                    "Assam Security forces in search of 5 terror",
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
                "Bangladesh-based jehadi terror module Jamat-ul Mujahideen Bangladesh has been active in the state and several operatives of the JMB were arrested in state in past. ",
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
