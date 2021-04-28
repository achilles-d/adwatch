import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';
import 'package:adwatch_app/app/bluetooth_connecting.dart';

class BluetoothSettings extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: BluetoothSettingsPage(),
  //   );
  // }
  State createState() => BluetoothSettingsPage();
}

class BluetoothSettingsPage extends State<BluetoothSettings>{
  BuildContext myBuildContext;
  bool micEnabled = true;
  @override
  Widget build(BuildContext context){
    myBuildContext = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Bluetooth',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
            )
        ),
        backgroundColor: Colors.white,
      ),
      body: new Stack(
          children: <Widget>[
            Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Center(
                          child: Text(
                            'Available Devices',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                            )
                          )
                      )
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.watch_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Tom\'s watch',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {
                        _displayConnectConfirmDialog('Tom', true);
                      },
                      child: Text(
                        'CONNECT',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.watch_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Lee\'s watch',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {
                        _displayConnectConfirmDialog('Lee', true);
                      },
                      child: Text(
                        'CONNECT',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.watch_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Tim\'s watch',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {
                        _displayConnectConfirmDialog('Tim', true);
                      },
                      child: Text(
                        'CONNECT',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.watch_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Bryant\'s watch',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {
                        _displayConnectConfirmDialog('Bryant', true);
                      },
                      child: Text(
                        'CONNECT',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.watch_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Tiffany\'s watch',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {
                        _displayConnectConfirmDialog('Tiffany', true);
                      },
                      child: Text(
                        'CONNECT',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.watch_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Lex\'s watch',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {
                        _displayConnectConfirmDialog('Lex', true);
                      },
                      child: Text(
                        'CONNECT',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10
                    ),
                    child: Divider(
                      thickness: 5,
                    ),
                  ),
                  Container(
                      child: Center(
                          child: Text(
                              'Connected Device',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                              )
                          )
                      )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.watch_sharp,
                        color: Colors.black,
                      ),
                      title: Text(
                          'John\'s watch',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                          )
                      ),
                      trailing: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.black
                        ),
                        onPressed: () {
                          _displayConnectConfirmDialog('John', false);
                        },
                        child: Text(
                          'DISCONNECT',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto'
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      'BACK TO SETTINGS',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto'
                      ),
                    ),
                  ),
                ]
            )
          ]
      ),
    );
  }

  Future<void> _displayConnectConfirmDialog(String name, bool isConnecting) async {
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BluetoothConnecting()),
                  );
                }
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