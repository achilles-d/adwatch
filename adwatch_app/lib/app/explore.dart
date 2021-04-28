import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';

class Explore extends StatefulWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(fontFamily: 'Montserrat'),
  //     home: BluetoothSettingsPage(),
  //   );
  // }
  State createState() => ExplorePage();
}

class ExplorePage extends State<Explore>{
  BuildContext myBuildContext;
  @override
  Widget build(BuildContext context){
    myBuildContext = context;
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Explore',
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
                child: ListView(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            child: Column(
                                children: <Widget>[
                                  Container(
                                      width: 175.00,
                                      height: 200.00,
                                      decoration: new BoxDecoration(
                                        image: new DecorationImage(
                                          image: ExactAssetImage('assets/example.png'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      )
                                  ),
                                  Container(
                                      child: Text(
                                          'Caption',
                                          style: TextStyle(
                                              fontFamily: 'Roboto'
                                          )
                                      )
                                  ),
                                  Container(
                                    height: 10.00,
                                  )
                                ]
                            ),
                          ),
                          Card(
                            child: Column(
                                children: <Widget>[
                                  Container(
                                      width: 175.00,
                                      height: 200.00,
                                      decoration: new BoxDecoration(
                                        image: new DecorationImage(
                                          image: ExactAssetImage('assets/example.png'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      )
                                  ),
                                  Container(
                                      child: Text(
                                          'Caption',
                                          style: TextStyle(
                                              fontFamily: 'Roboto'
                                          )
                                      )
                                  ),
                                  Container(
                                    height: 10.00,
                                  )
                                ]
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      width: 175.00,
                                      height: 200.00,
                                      decoration: new BoxDecoration(
                                        image: new DecorationImage(
                                          image: ExactAssetImage('assets/example.png'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      )
                                  ),
                                  Container(
                                    child: Text(
                                      'Caption',
                                      style: TextStyle(
                                        fontFamily: 'Roboto'
                                      )
                                    )
                                  ),
                                  Container(
                                    height: 10.00,
                                  )
                                ]
                              ),
                          ),
                          Card(
                            child: Column(
                                children: <Widget>[
                                  Container(
                                      width: 175.00,
                                      height: 200.00,
                                      decoration: new BoxDecoration(
                                        image: new DecorationImage(
                                          image: ExactAssetImage('assets/example.png'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      )
                                  ),
                                  Container(
                                      child: Text(
                                          'Caption',
                                          style: TextStyle(
                                              fontFamily: 'Roboto'
                                          )
                                      )
                                  ),
                                  Container(
                                    height: 10.00,
                                  )
                                ]
                            ),
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                          )
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 110,
                          ),
                          child: OutlinedButton(
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
                              'RETURN TO MENU',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto'
                              ),
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