import 'package:adwatch_app/app/sounds_and_vibration_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/privacy_settings.dart';
import 'package:adwatch_app/app/front_page.dart';

class PrivacySettings extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: PrivacySettingsPage(),
  //   );
  // }
  State createState() => PrivacySettingsPage();
}

class PrivacySettingsPage extends State<PrivacySettings>{
  BuildContext myBuildContext;
  bool micAccessEnabled = false;
  bool edaAccessEnabled = false;
  @override
  Widget build(BuildContext context){
    myBuildContext = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy',
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
                    vertical: 30,
                  ),
                  child: Icon(
                    Icons.privacy_tip,
                    size: 48,
                  )
                ),
                ListTile(
                  leading: Icon(
                    Icons.keyboard_voice_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                      'Allow access to microphone data',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                      )
                  ),
                  trailing: Switch(
                    value: micAccessEnabled,
                    onChanged: (value) {
                      setState(() {
                        micAccessEnabled = value;
                        print(micAccessEnabled);
                      });
                    },
                    activeTrackColor: Colors.black54,
                    activeColor: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.healing,
                    color: Colors.black,
                  ),
                  title: Text(
                      'Allow access to EDA data',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                      )
                  ),
                  trailing: Switch(
                    value: edaAccessEnabled,
                    onChanged: (value) {
                      setState(() {
                        edaAccessEnabled = value;
                        print(edaAccessEnabled);
                      });
                    },
                    activeTrackColor: Colors.black54,
                    activeColor: Colors.black,
                  ),
                ),
                Container(
                  height: 100
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
}