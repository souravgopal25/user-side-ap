import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_side_ap/form/login_form.dart';
import 'package:user_side_ap/form/signup_form.dart';
import 'package:user_side_ap/page/dashboard.dart';

class SignupPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SignupPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginPage(
        formKey: _formKey,
        emailController: emailController,
        passController: passController);
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({
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
                    SizedBox(
                      height: 20,
                    ),
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
