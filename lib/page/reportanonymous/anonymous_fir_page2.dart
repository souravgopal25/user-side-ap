import 'package:flutter/material.dart';
import 'package:user_side_ap/models/annonymous_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user_side_ap/page/dashboard.dart';
import 'package:file_picker/file_picker.dart';

class AnonymousDetails extends StatefulWidget {
  final AnnonyDetailModel detailModel;
  AnonymousDetails({Key key, this.detailModel}) : super(key: key);

  _AnonymousCaseDetailsPage createState() =>
      _AnonymousCaseDetailsPage(detailModel);
}

class _AnonymousCaseDetailsPage extends State<AnonymousDetails> {
  _AnonymousCaseDetailsPage(this.detailModel);
  final AnnonyDetailModel detailModel;
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                      titleCase = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Evidence(if any photo/video/docx.etc)',
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
              RaisedButton(
                child: Text("Choose file/image from file manager"),
                onPressed: () async {
                  FilePickerResult result =
                      await FilePicker.platform.pickFiles();

                  if (result != null) {
                    PlatformFile file = result.files.first;

                    print(file.name);
                    print(file.bytes);
                    print(file.size);
                    print(file.extension);
                    print(file.path);
                  }
                },
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
                      print(detailModel);
                      detailModel.titleCase = titleCase.trim();
                      detailModel.description = description.trim();
                      detailModel.suspect = suspect.trim();
                      await Firestore.instance
                          .collection("Reports-An")
                          .doc(detailModel.city)
                          .set(detailModel.toMap());
                      print(detailModel.toMap());

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  (Dashboard())));
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
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        child: new Icon(Icons.chevron_right),
        backgroundColor: Colors.blue,
        onPressed: () {
          /* Navigator.of(context).push(MaterialPageRoute(
              //builder: (BuildContext context) => (UserRegistration())
          ));*/
        },
      ),
    );
  }
}
