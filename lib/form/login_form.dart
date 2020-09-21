import 'package:flutter/material.dart';
import 'package:user_side_ap/page/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
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
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
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
              controller: passController,
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
            RaisedButton(
              onPressed: () async {
                if (!_formKey.currentState.validate()) {
                  return;
                } else {
                  showAlertDialog(context);
                }
              },
              focusElevation: 10,
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
              child: Text("Sign - In"),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  //Creating Button
  final otpController = TextEditingController();
  Widget okButton = FlatButton(
      onPressed: () {
        print(otpController.text);
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => HomePage()));
        //TODO ADD FIREBASE AUTH FOR OTP VERIFICATION
      },
      child: Text("Submit"));

  //Creating AlertDialog
  AlertDialog alertDialog = AlertDialog(
    title: Text("OTP sent to your registered mobile number"),
    content: Container(
      child: TextFormField(
        controller: otpController,
        maxLength: 6,
        keyboardType: TextInputType.number,
        validator: (String value) {
          if (value.isEmpty) {
            return "Enter OTP ";
          }
          return null;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter OTP",
            labelText: "OTP"),
      ),
    ),
    actions: [okButton],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
