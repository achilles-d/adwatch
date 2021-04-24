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
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: new DecorationImage(
                          image: new AssetImage("assets/background/Notifications.png"),
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: new DecorationImage(
                       image: new AssetImage("assets/background/Report Page.png"),
                      )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: new DecorationImage(
                          image: new AssetImage("assets/background/Settings.png"),
                        )
                    ),
                  ),
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