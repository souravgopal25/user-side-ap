import 'package:flutter/material.dart';
import 'package:user_side_ap/page/dashboard.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_side_ap/service/auth.dart';

class LoginForm extends StatefulWidget {
  LoginForm({
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
  _LoginFormState createState() => _LoginFormState();
}
//TODO ADD BLOC

class _LoginFormState extends State<LoginForm> {
  AuthService authService = AuthService();
  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  Future<bool> loginUser(String phone, BuildContext context, User user1) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async {
          var result = await _auth.signInWithCredential(credential);
          User user = result.user;
          if (user != null) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Dashboard(
                          user: user1,
                        )));
          }
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception);
        },
        codeSent: (String verificationID, [int forceResendingToken]) {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text("Submit OTP"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: otpController,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Confirm"),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () async {
                        final code = otpController.text.trim();
                        AuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: verificationID, smsCode: code);

                        var result =
                            await _auth.signInWithCredential(credential);

                        User user = result.user;

                        if (user != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard(
                                        user: user,
                                      )));
                        } else {
                          print("Error");
                        }
                      },
                    )
                  ],
                );
              });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print(verificationId);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              maxLength: 10,
              keyboardType: TextInputType.phone,
              controller: phoneController,
              validator: (String value) {
                if (value.isEmpty) {
                  return "Phone Required";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Phone",
                  labelText: "Phone"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: widget.emailController,
              validator: (String value) {
                if (value.isEmpty) {
                  return "Email Required";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Email",
                  labelText: "Email"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              maxLength: 10,
              controller: widget.passController,
              validator: (String value) {
                if (value.length < 6) {
                  return "Password Required with length 6+";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Password",
                  labelText: "Password"),
            ),
            ButtonTheme(
              buttonColor: Colors.lightBlueAccent,
              splashColor: Colors.red,
              minWidth: MediaQuery.of(context).size.shortestSide,
              height: MediaQuery.of(context).size.height * 0.05,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                onPressed: () async {
                  if (!widget._formKey.currentState.validate()) {
                    return;
                  } else {
                    if (!widget._formKey.currentState.validate()) {
                      return;
                    } else {
                      var result1 =
                          await authService.signInwithEmailAndPassword(
                              widget.emailController.text.trim(),
                              widget.passController.text.trim());
                      User user = result1;
                      if (user != null) {
                        loginUser(
                            "+91" + phoneController.text.trim(), context, user);
                      }
                    }
                  }
                },
                child: Column(
                  children: [
                    Text(
                      "Sign-in",
                      style: TextStyle(color: Colors.white, fontSize: 42),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
