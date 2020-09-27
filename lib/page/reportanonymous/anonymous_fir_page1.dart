import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_side_ap/models/annonymous_info.dart';

import 'anonymous_fir_page2.dart';

class AnonymousRegistration extends StatefulWidget {
  final String title;

  AnonymousRegistration({Key key, this.title}) : super(key: key);

  _AnonymousPageState createState() => _AnonymousPageState();
}

class _AnonymousPageState extends State<AnonymousRegistration> {
  String state;

  String city;

  String district;
  String policestation;

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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              //children: Image.asset('assets/images/logo.png',
              //height: 100.0,
              //width: 100.0,),

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),

                // CircleAvatar(
                //  backgroundColor: Colors.blue,
                //  radius: 50.0),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                  child: Divider(),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      labelText: 'State',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      labelText: 'City',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        city = value;
                      });
                    },
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      labelText: 'District',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        district = value;
                      });
                    },
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.business),
                      labelText: 'Police Station',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        policestation = value;
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
                      onPressed: () {
                        //Creating object to pass to nextpage
                        var detail = AnnonyDetailModel(
                            state: state,
                            city: city,
                            district: district,
                            policeStation: policestation);
                        print(detail.toJson());
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => AnonymousDetails(
                                      detailModel: detail,
                                    )));
                      },
                      child: Column(
                        children: [
                          Text(
                            "Next",
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
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => (AnonymousDetails())));
            }));
  }
}
