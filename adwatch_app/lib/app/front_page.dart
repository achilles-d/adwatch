import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/search.dart';

class Front extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatelessWidget{
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: const Text(
                    'ADwatch',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    )
                ),
                backgroundColor: Colors.white,
                bottom: TabBar(
                  tabs: [
                    Tab(
                        icon: Icon(Icons.notifications,
                        color: Colors.black)
                    ), // Notifications
                    Tab(
                        icon: Icon(Icons.favorite,
                            color: Colors.black)
                    ), // Emotional Status
                    Tab(
                        icon: Icon(Icons.settings,
                            color: Colors.black)
                    ), // Settings
                  ],
                ),
              ),
              body: TabBarView(
                // Automatically bound to the appBar buttons
                children: <Widget>[
                  Container(
                      child: Column(
                          children: <Widget>[
                            Card(
                              child: ListTile(
                                leading: Text(
                                    '12:35p',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                                title: Text(
                                    'Ask John if he would like to play poker',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading: Text(
                                    '11:00a',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                                title: Text(
                                    'Remind John to brush his teeth',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                onTap: null,
                                leading: Text(
                                    '10:00a',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                                title: Text(
                                    'Give John some time to himself',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading: Text(
                                    '9:00a',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                                title: Text(
                                    'Ask John about how he\'s feeling',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading: Text(
                                    '8:00a',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                                title: Text(
                                    'Watch not being worn by John',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    )
                                ),
                              ),
                            ),
                          ]
                      )
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                      // child: Container(
                      //   alignment: Alignment.center,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 65,
                                  child: Center(
                                    child: Text(
                                      'JOHN',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: Icon(
                                      Icons.people_alt,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Icon(
                                Icons.tag_faces,
                                size: 100,
                              )
                            ),
                            Container(
                              //height: 75,
                              child: Text(
                                'HAPPY',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 36,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.5,
                                      vertical: 20
                                  ),
                                  child: Icon(
                                    Icons.access_time,
                                    size: 25,
                                  )
                                ),
                                Container(
                                  child: Text(
                                    'Since 12:30p',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                      )
                                  )
                                )
                              ]
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
                                child: Text(
                                    'Recent History',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )
                                )
                            ),
                            Container(
                              height: 50,
                                child: Card(
                                  child: ListTile(
                                    leading: Text(
                                      '12:00a',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                    title: Text(
                                      'Confused',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                      )
                                    ),
                                  ),
                                ),
                            ),
                            Container(
                              height: 50,
                              child: Card(
                                child: ListTile(
                                  leading: Text(
                                    '11:00a',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  title: Text(
                                      'Upset',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Card(
                                child: ListTile(
                                  leading: Text(
                                    '10:00a',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  title: Text(
                                      'Happy',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      )
                                  ),
                                ),
                              ),
                            ),
                            // "View More" button
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Front()),
                                );
                              },
                              child: Text(
                                'View More',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Roboto'
                                ),
                              ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                primary: Colors.black,
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Front()),
                                );
                              },
                              child: Text(
                                'Graphs',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Roboto'
                                ),
                              ),
                            ),
                          ]
                        ),
                      ),
                  // ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Front()),
                              );
                            },
                            leading: Icon(
                              Icons.notifications_active,
                              color: Colors.black,
                            ),
                            title: Text(
                              'Notifications',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                              )
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Front()),
                              );
                            },
                            leading: Icon(
                              Icons.bluetooth,
                              color: Colors.black,
                            ),
                            title: Text(
                                'Bluetooth',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Front()),
                              );
                            },
                            leading: Icon(
                              Icons.privacy_tip,
                              color: Colors.black,
                            ),
                            title: Text(
                                'Privacy',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Front()),
                              );
                            },
                            leading: Icon(
                              Icons.surround_sound,
                              color: Colors.black,
                            ),
                            title: Text(
                                'Sounds & Vibration',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Front()),
                              );
                            },
                            leading: Icon(
                              Icons.logout,
                              color: Colors.black,
                            ),
                            title: Text(
                                'Log Out',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )
                            ),
                          ),
                        ),
                      ]
                    )
                  )
                ]
              )
            ),
          ),
          // new Container(
          //   decoration: new BoxDecoration(
          //     image: new DecorationImage(
          //       image: new AssetImage("assets/background/7-FrontPage.jpg"), fit: BoxFit.cover,),
          //   ),
          // ),

        ],
      ),
    );
  }
}