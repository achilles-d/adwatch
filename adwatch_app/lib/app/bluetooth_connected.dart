import 'package:adwatch_app/app/bluetooth_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';

class BluetoothConnecting extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: BluetoothSettingsPage(),
  //   );
  // }
  State createState() => BluetoothConnectingPage();
}

class BluetoothConnectingPage extends State<BluetoothConnecting>{
  BuildContext myBuildContext;
  @override
  Widget build(BuildContext context){
    myBuildContext = context;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Connected',
            style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.black,
            )
          ),
          backgroundColor: Colors.white,
        ),
        body: new Stack(
          children: <Widget>[
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.phonelink_ring_rounded,
                          size: 92,
                        ),
                        Icon(
                            Icons.watch,
                            size: 92
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      )
                    ),
                    // CircularProgressIndicator(
                    //   backgroundColor: Colors.black54,
                    // ),
                    Icon(
                      Icons.check_circle_outline,
                      size: 72,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      )
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BluetoothSettings()),
                        );
                      },
                      child: Text(
                        'BACK TO BLUETOOTH SETTINGS',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                ]
              ),
            ),
          ]
        )
    );
  }
}