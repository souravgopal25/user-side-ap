import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

class QrList extends StatefulWidget {
  const QrList({Key key}) : super(key: key);

  @override
  _QrListState createState() => _QrListState();
}

class _QrListState extends State<QrList> {
  @override
  void initState() {
    Hive.openBox("FIR1");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("QR Codes"),
        ),
        body: ListView.builder(
            itemCount: Hive.box("FIR1").keys.toList().length,
            itemBuilder: (_, index) {
              var list = Hive.box("FIR1").keys.toList();
              return QrCard(
                keyword: list[index],
              );
            }));
  }
}

class QrCard extends StatelessWidget {
  final String keyword;
  const QrCard({Key key, this.keyword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[QrImage(data: keyword)],
          ),
        ),
      ),
    );
  }
}
