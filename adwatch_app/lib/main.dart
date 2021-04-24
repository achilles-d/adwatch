import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/createNewAccount/new_user.dart';
import 'package:adwatch_app/app/front_page.dart';
import 'package:adwatch_app/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/landing_screen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Container(
            alignment: Alignment.bottomCenter,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // Fingerprint login button
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Front()),
                    );
                  },
                  child: Text(
                    'Continue with Fingerprint',
                    style: TextStyle(
                        fontSize: 24,
                      fontFamily: 'Roboto'
                    ),
                  ),
                ),
                // Local passcode login button
                new CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                      'Use Local Passcode Instead',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF000000),
                        fontFamily: 'Roboto'),
                  ),
                ),
              ]
            )
          )
        ],
      ),
    );
  }
}