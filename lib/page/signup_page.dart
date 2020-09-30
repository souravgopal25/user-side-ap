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
              Column(
                children: [
                  Text(
                    "GOVERMENT OF ASSAM",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    "ASSAM POLICE",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
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
              "https://i.pinimg.com/736x/0e/a8/00/0ea800de8e9033282bdf73c4a086fe0a.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  color: Colors.white.withOpacity(0.9),
                  elevation: 20,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Signup",
                          style: TextStyle(fontSize: 80, color: Colors.blue),
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
