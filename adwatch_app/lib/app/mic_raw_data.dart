import 'package:adwatch_app/app/connect_credential_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/emotional_data.dart';

class MicRawData extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: BluetoothSettingsPage(),
  //   );
  // }
  State createState() => MicRawDataPage();
}

class MicRawDataPage extends State<MicRawData>{
  BuildContext myBuildContext;
  bool micEnabled = true;
  @override
  Widget build(BuildContext context){
    myBuildContext = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Microphone Raw Data',
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
                        vertical: 20,
                      ),
                      child: Icon(
                        Icons.mic,
                        size: 48,
                      )
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.voicemail_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Recorded Audio',
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

                      },
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.text_snippet,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Audio Transcript',
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

                      },
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto'
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
                        MaterialPageRoute(builder: (context) => EmotionalData()),
                      );
                    },
                    child: Text(
                      'BACK TO ALL DATA',
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
    String titleSuffix;
    if(isConnecting) {
      messagePrefix = 'Are you sure that you want to connect to ';
      titleSuffix = 'Connection';
    }
    else {
      messagePrefix = 'Are you sure that you want to disconnect ';
      titleSuffix = 'Disconnect';
    }

    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
              'Confirm ' + titleSuffix,
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
                        builder: (context) => ConnectCredentialForm()),
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