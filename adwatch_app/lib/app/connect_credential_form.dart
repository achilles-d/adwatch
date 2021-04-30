import 'package:adwatch_app/app/bluetooth_connected.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';

class ConnectCredentialForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: ConnectCredentialFormPage(),
    );
  }
}

class ConnectCredentialFormPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
              alignment: Alignment.center,
              width: 400,
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                        child: Text(
                          'To connect, enter the watch passcode.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          )
                        )
                    ),
                    new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 25),
                      child: TextFormField(
                        obscureText: true,
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
                            MaterialPageRoute(builder: (context) => BluetoothConnecting()),
                          );
                        },
                        child: Text(
                          'CONNECT',
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