import 'package:flutter/material.dart';
import 'package:flutter_signin/screens/login.dart';
import 'package:flutter_signin/screens/signup.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: <Widget>[
          SizedBox(
            height: 200,
          ),
          Center(
            child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 80),
                color: Colors.red,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(32.0)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 18.0),
                )),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Text("Don't have an account?"),
          ),
          Center(
            child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 72),
                color: Colors.purple[50],
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(32.0)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 18.0),
                )),
          ),
        ]),
      ),
    );
  }
}
