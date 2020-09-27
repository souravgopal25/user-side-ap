import 'package:flutter/material.dart';

import 'package:user_side_ap/form/signup_form.dart';

class SignupPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SignupPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Signup(
        formKey: _formKey,
        emailController: emailController,
        passController: passController);
  }
}

class Signup extends StatelessWidget {
  const Signup({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.emailController,
    @required this.passController,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController emailController;
  final TextEditingController passController;

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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              "https://images.unsplash.com/photo-1589441931743-900205c41d7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 20,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Signup",
                          style: TextStyle(fontSize: 100, color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SignupForm(
                          formKey: _formKey,
                          emailController: emailController,
                          passController: passController),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
