import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:user_side_ap/card/alert_card.dart';

class Alerts extends StatefulWidget {
  const Alerts({Key key}) : super(key: key);

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: StreamBuilder(
          stream: Firestore.instance.collection("Alerts").snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data.docs.asMap());
              Map map = snapshot.data.docs.asMap();
              print(map[1]);
              QueryDocumentSnapshot obj = map[1];
              print(obj.data());
              return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    Map map = snapshot.data.docs.asMap();
                    return AlertCard(
                      snapshot1: map[index],
                    );
                  });
            }

            return Center(
              child: Text("Loaded"),
            );
          }),
    );
  }

  Future getData() async {
    CollectionReference alertsCollection =
        Firestore.instance.collection("Alerts");

    /* alertsCollection.get().then((QuerySnapshot docs) {
      return docs;
      // ignore: dead_code
      /* {
        print(docs.size);
        print(docs);
        print(docs.docChanges);
        print(docs.docs);
        for (var item in docs.docs) {
          print(item.data());
        }*/
    });*/

    /*QuerySnapshot qn = await alertsCollection.snapshots();
    return qn.docs;*/
  }
}
