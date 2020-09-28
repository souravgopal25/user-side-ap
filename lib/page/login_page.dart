import 'package:flutter/material.dart';
import 'package:user_side_ap/bloc/login_bloc/login_bloc_bloc.dart';
import 'package:user_side_ap/form/login_form.dart';
import 'package:user_side_ap/page/signup_page.dart';
import 'package:user_side_ap/service/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  final AuthService _authService;

  const LoginPage({Key key, AuthService authService})
      : _authService = authService,
        super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _authService;
  _LoginPageState({AuthService authService}) : _authService = authService;

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        body: BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(_authService),
          child: Stack(
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
                      color: Colors.white60.withOpacity(0.6),
                      elevation: 15,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 100, color: Colors.blue),
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
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => SignupPage()));
                            },
                            child: Text("Sign-up"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
