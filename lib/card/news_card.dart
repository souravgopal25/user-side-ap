import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:user_side_ap/models/news.dart';

class NewsCard extends StatelessWidget {
  final Articles articles;

  const NewsCard({@required this.articles});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              launch(articles.url);
            },
            child: Card(
              elevation: 10,
              color: Colors.white,
              shadowColor: Colors.grey[200],
              borderOnForeground: true,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.network(articles.image),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      articles.title,
                      style: TextStyle(fontSize: 25.0),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Text(
                      articles.description,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
