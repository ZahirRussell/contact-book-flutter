import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin/screens/homepage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Login Form'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Your Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22.0)),
              ),
              onChanged: (value) => setState(() {
                _email = value;
              }),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0))),
              onChanged: (value) => setState(() {
                _password = value;
              }),
            ),
            SizedBox(
              height: 150,
            ),
            FlatButton(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 72),
                color: Colors.red,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(32.0)),
                onPressed: () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _email, password: _password)
                      .then((user) => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen())))
                      .catchError((e) {
                    print(e);
                  });
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 18.0),
                )),
          ],
        ),
      ),
    );
  }
}
