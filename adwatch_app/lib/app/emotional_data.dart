import 'package:adwatch_app/app/connect_credential_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';
import 'package:adwatch_app/app/mic_raw_data.dart';
import 'package:adwatch_app/app/mic_analysis.dart';
import 'package:adwatch_app/app/eda_raw_data.dart';
import 'package:adwatch_app/app/eda_analysis.dart';

class EmotionalData extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: BluetoothSettingsPage(),
  //   );
  // }
  State createState() => EmotionalDataPage();
}

class EmotionalDataPage extends State<EmotionalData>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'All Emotional Data',
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
                  Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Center(
                          child: Text(
                              'Microphone Data',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                              )
                          )
                      )
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.folder,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Raw Data',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MicRawData()),
                        );
                      },
                      child: Text(
                        'VIEW',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bar_chart,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Data Analysis',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MicAnalysis()),
                        );
                      },
                      child: Text(
                        'VIEW',
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
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Icon(
                        Icons.healing,
                        size: 48,
                      )
                  ),
                  Container(
                      child: Center(
                          child: Text(
                              'Skin Conductance (EDA) Data',
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
                        Icons.folder,
                        color: Colors.black,
                      ),
                      title: Text(
                          'Raw Data',
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EDARawData()),
                          );
                        },
                        child: Text(
                          'VIEW',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto'
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bar_chart,
                      color: Colors.black,
                    ),
                    title: Text(
                        'Data Analysis',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EDAAnalysis()),
                        );
                      },
                      child: Text(
                        'VIEW',
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
                        MaterialPageRoute(builder: (context) => Front()),
                      );
                    },
                    child: Text(
                      'BACK TO MENU',
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