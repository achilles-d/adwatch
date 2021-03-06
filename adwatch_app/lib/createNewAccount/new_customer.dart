import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/createNewAccount/sign_up_complete.dart';

class NewCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: NewCustomerPage(),
    );
  }
}

class NewCustomerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/4-NewCustomer.jpg"), fit: BoxFit.cover,),
            ),
          ),
          new Container(
              alignment: Alignment.center,
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 120),
                    new CupertinoButton(
                      color: Color(0xFF48A7FF),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpComplete()),
                        );
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'Montserrat'),
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