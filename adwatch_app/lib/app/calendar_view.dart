import 'package:adwatch_app/app/emotional_history.dart';
import 'package:adwatch_app/app/sounds_and_vibration_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';
import 'package:adwatch_app/app/privacy_settings.dart';
import 'package:adwatch_app/app/notifications_settings.dart';
import 'package:adwatch_app/app/bluetooth_settings.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarView extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: FrontPage(),
  //   );
  // }
  State createState() => CalendarViewPage();
}

class CalendarViewPage extends State<CalendarView> {
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
                              'Calendar View',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                              )
                          )
                      )
                  ),
                  Container(
                    child: TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.utc(2020, 12, 21),
                      calendarBuilders: CalendarBuilders(
                        dowBuilder: (context, day) {
                            final text = DateFormat.E().format(day);
                            return Center(
                              child: Text(
                                text,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                    color: Colors.black
                                ),
                              ),
                            );
                          }
                      ),
                    )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 50)
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.black
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmotionalHistory()),
                      );
                    },
                    child: Text(
                      'VIEW',
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