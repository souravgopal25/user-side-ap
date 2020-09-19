import 'package:flutter/material.dart';

class UpdateCard extends StatelessWidget {
  const UpdateCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            borderOnForeground: true,
            elevation: 10,
            color: Colors.grey[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Case Acknowledgment Number :",
                        softWrap: true,
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        "01",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Date of Case :",
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        "27/09/2020",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Case Title :",
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        "ACCIDENT IN JAMSHEDPUR",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Case Description :",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis eros sit amet tellus ultrices pulvinar. Donec molestie magna eu purus elementum, sed porttitor ligula accumsan. Aenean elementum erat vel velit rhoncus hendrerit vel in tellus. Praesent quis iaculis velit. Vivamus id arcu a mi vehicula sagittis. Vivamus ut interdum enim, dictum vehicula tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed placerat, mauris sed fringilla pellentesque, risus purus posuere nisi, vel rutrum mauris massa ut eros. Sed magna turpis, faucibus vel arcu id, semper blandit turpis.",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
