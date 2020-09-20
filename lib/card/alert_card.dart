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
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut tempor lacus. Vivamus quis elementum diam. Nunc tellus tortor, lobortis non euismod id, pharetra id mi. Cras sit amet nulla pharetra, suscipit lacus nec, vestibulum lacus. Etiam rutrum ex vitae maximus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam condimentum tristique dolor. Cras sed ante leo. Praesent egestas est mi, eget mattis dolor venenatis eu. Morbi laoreet pulvinar efficitur. Pellentesque eu faucibus dui. Sed tempor ultricies justo id dignissim. In ac purus nisl. Aliquam ullamcorper quis magna eget rhoncus. Nunc.",
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
