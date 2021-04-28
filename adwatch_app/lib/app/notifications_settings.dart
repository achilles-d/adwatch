import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';

class NotificationsSettings extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: NotificationsSettingsPage(),
  //   );
  // }
  State createState() => NotificationsSettingsPage();
}

class NotificationsSettingsPage extends State<NotificationsSettings>{
  BuildContext myBuildContext;
  bool alertWatchDisconnected = false;
  bool alertEmotionChangeDetected = false;
  bool activitySuggestionsEnabled = false;
  @override
  Widget build(BuildContext context){
    myBuildContext = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Notifications',
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
                        Icons.notifications_active,
                        size: 48,
                      )
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.watch,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Watch disconnected',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: Switch(
                      value: alertWatchDisconnected,
                      onChanged: (value) {
                        setState(() {
                          alertWatchDisconnected = value;
                          print(alertWatchDisconnected);
                        });
                      },
                      activeTrackColor: Colors.black54,
                      activeColor: Colors.black,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Emotion change detected',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: Switch(
                      value: alertEmotionChangeDetected,
                      onChanged: (value) {
                        setState(() {
                          alertEmotionChangeDetected = value;
                          print(alertEmotionChangeDetected);
                        });
                      },
                      activeTrackColor: Colors.black54,
                      activeColor: Colors.black,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.sports_baseball_rounded,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Activity suggestions',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    trailing: Switch(
                      value: activitySuggestionsEnabled,
                      onChanged: (value) {
                        setState(() {
                          activitySuggestionsEnabled = value;
                          print(activitySuggestionsEnabled);
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