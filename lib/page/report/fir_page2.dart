import 'package:flutter/material.dart';
import 'package:user_side_ap/models/fir_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CaseDetails extends StatefulWidget {
  final FirDetails details;
  CaseDetails({Key key, this.details}) : super(key: key);

  _CaseDetailsPage createState() => _CaseDetailsPage();
}

class _CaseDetailsPage extends State<CaseDetails> {
  String caseType;
  String titleCase;
  String description;
  String suspect;

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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Case Type',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                      )),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        caseType = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Case Title',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                      )),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        titleCase = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    minLines: 2,
                    maxLines: 10,
                    decoration: InputDecoration(
                      labelText: 'Case Description',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                      )),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        description = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Suspects(if any)',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                      )),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        suspect = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonTheme(
                    buttonColor: Colors.lightBlueAccent,
                    splashColor: Colors.red,
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      onPressed: () async {
                        widget.details.caseType = caseType;
                        widget.details.caseTitle = titleCase;
                        widget.details.description = description;
                        widget.details.suspect = suspect;
                        print(widget.details.toMap());
                        var x = await Firestore.instance
                            .collection("FIR")
                            .doc(widget.details.city)
                            .set(widget.details.toMap());
                      },
                      child: Column(
                        children: [
                          Text(
                            "Submit",
                            style: TextStyle(color: Colors.white, fontSize: 42),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
