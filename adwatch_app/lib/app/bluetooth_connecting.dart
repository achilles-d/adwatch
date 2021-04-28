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
            'Connecting...',
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
                    CircularProgressIndicator(
                      backgroundColor: Colors.black54,
                    ),
                ]
              ),
            ),
          ]
        )
    );
  }

  Future<void> _displayConnectConfimDialog(String name, bool isConnecting) async {
    String messagePrefix;
    if(isConnecting)
      messagePrefix = 'Are you sure that you want to connect to ';
    else
      messagePrefix = 'Are you sure that you want to disconnect ';

    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
              'Confirm Connection',
              style: TextStyle(
                fontFamily: 'Roboto',
              )
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    messagePrefix + name + "\'s" + " watch?",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                    )
                ),
              ],
            ),
          ),
          actions: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
              ),
              child: Text(
                  'YES',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                  )
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
              ),
              child: Text(
                  'NO',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                  )
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}