import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AnonymousRegistration extends StatefulWidget {
  AnonymousRegistration({Key key, this.title}) : super(key: key);

  final String title;

<<<<<<< HEAD
  _AnonymousCaseDetailsPage createState() => _AnonymousCaseDetailsPage();
}

class _AnonymousCaseDetailsPage extends State<AnonymousDetails> {
  String titleCase;
  String description;
  String suspect;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
=======

  _AnonymousPageState createState() => _AnonymousPageState();
}

class _AnonymousPageState extends State<AnonymousRegistration> {

  String state;
  var _states = ['sikkim', 'andra pradesh', 'odissa', 'others'];
  var _currentItemSelected1 = 'odissa';
  String city;
  var _cities = ['Bhubneshswar', 'Berhampur', 'Cuttuck', 'others'];
  var _currentItemSelected2 = 'Berhampur';
  String district;
  String policestation;
  String otp;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      labelText: 'State',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
>>>>>>> 8d8a907639757f01227fae87db8f987ebfc5bced
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      labelText: 'City',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
<<<<<<< HEAD
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: MaterialButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    print(titleCase);
                    print(description);
                    print(suspect);
                  },
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
          //TODO ADD
        },
      ),
=======
                            color: Colors.blue
                        ),
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
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      labelText: 'District',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        ),
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
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.business),
                      labelText: 'Police Station',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        ),
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
                  //builder: (BuildContext context) => (AnonymousDetails())
              ));
            }
        )
>>>>>>> 8d8a907639757f01227fae87db8f987ebfc5bced
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 8d8a907639757f01227fae87db8f987ebfc5bced
