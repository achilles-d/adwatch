import 'package:adwatch_app/app/sounds_and_vibration_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';
import 'package:adwatch_app/app/privacy_settings.dart';
import 'package:adwatch_app/app/notifications_settings.dart';
import 'package:adwatch_app/app/bluetooth_settings.dart';
import 'package:adwatch_app/app/calendar_view.dart';

class EmotionalHistory extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: FrontPage(),
  //   );
  // }
  State createState() => EmotionalHistoryPage();
}

class EmotionalHistoryPage extends State<EmotionalHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'John\'s Emotional Status',
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
                              '12/21/2021',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                              )
                          )
                      )
                  ),
                  ListTile(
                    leading: Text(
                        '12:00p',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    title: Text(
                        'Confused',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      child: Text(
                        'EDIT',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                        '11:00a',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    title: Text(
                        'Upset',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      child: Text(
                        'EDIT',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                        '10:00a',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    title: Text(
                        'Happy',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      child: Text(
                        'EDIT',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                        '9:00a',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    title: Text(
                        'Bored',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      child: Text(
                        'EDIT',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                        '8:00a',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        )
                    ),
                    title: Text(
                        'Frustrated',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        )
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black
                      ),
                      child: Text(
                        'EDIT',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          color: Colors.white,
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
                      padding: EdgeInsets.symmetric(
                          vertical: 10
                      ),
                      child: Center(
                          child: Icon(
                            Icons.calendar_today,
                            size: 72,
                          )
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
                        MaterialPageRoute(builder: (context) => CalendarView()),
                      );
                    },
                    child: Text(
                      'CALENDAR VIEW',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto'
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 20
                      ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.white
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Front()),
                        );
                      },
                      child: Text(
                        'RETURN TO CURRENT STATUS',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  )
                ]
            )
          ]
      ),
    );
  }
}