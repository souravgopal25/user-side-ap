import 'package:flutter/material.dart';
import 'package:user_side_ap/page/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';

final otpController = TextEditingController();

class SignupForm extends StatefulWidget {
  SignupForm({
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
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  Future<bool> loginUser(String phone, BuildContext context) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async {
          var result = await _auth.signInWithCredential(credential);
          User user = result.user;
          if (user != null) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
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
                  title: Text("Give the code?"),
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
                                  builder: (context) => Dashboard()));
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

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: phoneController,
              maxLength: 10,
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
            RaisedButton(
              onPressed: () async {
                FirebaseAuth _auth = FirebaseAuth.instance;
                if (!widget._formKey.currentState.validate()) {
                  return;
                } else {
                  var result1 = await _auth.signInWithEmailAndPassword(
                      email: widget.emailController.text.trim(),
                      password: widget.passController.text.trim());
                  User user = result1.user;
                  if (user != null) {
                    loginUser("+91" + phoneController.text.trim(), context);
                  }
                }
              },
              focusElevation: 10,
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
              child: Text("Sign - UP"),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context, String mobile) {
  //Creating Button
  Widget okButton = FlatButton(
      onPressed: () {
        print(otpController.text);

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
    actions: [],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
