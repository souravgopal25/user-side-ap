import 'package:flutter/material.dart';
import 'package:user_side_ap/form/login_form.dart';

import 'package:user_side_ap/page/signup_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 100, color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginForm(
                        formKey: _formKey,
                        emailController: emailController,
                        passController: passController),
                    RaisedButton(
                      onPressed: () {
                        /*   Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => SignupPage()));*/
                      },
                      child: Text("SIgnup-form"),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
