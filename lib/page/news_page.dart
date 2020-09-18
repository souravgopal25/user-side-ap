import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Page"),
      ),
      body: NewsCard(),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Card(
            elevation: 10,
            color: Colors.white,
            shadowColor: Colors.grey[200],
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.network(
                      "https://cdn.thewire.in/wp-content/uploads/2020/09/14211155/2020-09-14T150646Z_1_LYNXMPEG8D1I6_RTROPTP_3_SPACE-EXPLORATION-VENUS-e1600098181101.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Sonowal asks entrepreneurs to tap market potential of bamboo ",
                    style: TextStyle(fontSize: 25.0),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Text(
                    "A total of 126 public complaints regarding impro"
                    "per management of biomedical waste were received in the"
                    "last two years, with notices issued to healthcare facilities in"
                    "Rajasthan, Assam and Madhya Pradesh, the environment ministry"
                    " informed the Lok Sabha on Friday.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
