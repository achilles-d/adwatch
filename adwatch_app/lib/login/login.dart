import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/Passcode.png"), fit: BoxFit.cover,),
            ),
          ),
          new Container(
              alignment: Alignment.center,
              width: 375,
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      alignment: Alignment.center,
                      child: TextFormField(
                        cursorColor: Theme.of(context).cursorColor,
                        maxLines: 1,
                        initialValue: "",
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          labelText: 'Username / E-mail',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto'
                          ),
                          // helperText: 'Helper text',
                          // suffixIcon: Icon(
                          //   Icons.check_circle,
                          // ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 25),
                      child: TextFormField(
                        cursorColor: Theme.of(context).cursorColor,
                        maxLines: 1,
                        initialValue: "",
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: 'Passcode',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto'
                          ),
                          // helperText: 'Helper text',
                          suffixIcon: Icon(
                            Icons.visibility,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  new Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.symmetric(vertical: 25),
                    child:
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
                        'LOG IN',
                        style: TextStyle(
                          fontSize: 20,
                            fontFamily: 'Roboto'),
                      ),
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