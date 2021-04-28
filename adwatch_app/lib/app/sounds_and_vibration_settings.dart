import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';

class SoundsAndVibrationSettings extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: SoundsAndVibrationSettingsPage(),
  //   );
  State createState() => SoundsAndVibrationSettingsPage();
}

class SoundsAndVibrationSettingsPage extends State<SoundsAndVibrationSettings>{
  BuildContext myBuildContext;
  bool watchConnectionLostSoundEnabled = true;
  bool emotionChangeVibrationEnabled = true;
  bool watchConnectedSoundEnabled = true;
  @override
  Widget build(BuildContext context){
    myBuildContext = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Sounds & Vibration',
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
                        Icons.surround_sound_rounded,
                        size: 48,
                      )
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.broken_image,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Watch connection lost alarm',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: Switch(
                      value: watchConnectionLostSoundEnabled,
                      onChanged: (value) {
                        setState(() {
                          watchConnectionLostSoundEnabled = value;
                          print(watchConnectionLostSoundEnabled);
                        });
                      },
                      activeTrackColor: Colors.black54,
                      activeColor: Colors.black,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.vibration,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Emotion change vibration',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: Switch(
                      value: emotionChangeVibrationEnabled,
                      onChanged: (value) {
                        setState(() {
                          emotionChangeVibrationEnabled = value;
                          print(emotionChangeVibrationEnabled);
                        });
                      },
                      activeTrackColor: Colors.black54,
                      activeColor: Colors.black,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.connect_without_contact,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Watch connected',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: Switch(
                      value: watchConnectedSoundEnabled,
                      onChanged: (value) {
                        setState(() {
                          watchConnectedSoundEnabled = value;
                          print(watchConnectedSoundEnabled);
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