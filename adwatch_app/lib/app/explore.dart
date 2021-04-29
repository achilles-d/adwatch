import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adwatch_app/app/front_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final String _caretakerGuidesURL = 'https://www.helpguide.org/articles/alzheimers-dementia-aging/tips-for-alzheimers-caregivers.htm';
  final String _adHotlinesURL = 'https://www.alz.org/help-support/resources/helpline';
  final String _emotionalSupportInfoURL = 'https://www.alz.org/help-support/i-have-alz/programs-support';
  final String _covid19HealthInfoURL = 'https://www.alz.org/alzheimers-dementia/coronavirus-covid-19';

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
                          InkWell(
                            onTap: () {
                              _launchURL(_caretakerGuidesURL);
                            },
                            child: Card(
                              child: Column(
                                  children: <Widget>[
                                    Container(
                                        width: 175.00,
                                        height: 200.00,
                                        decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                            image: ExactAssetImage('assets/background/explore1.jpg'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )
                                    ),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5,
                                        )
                                    ),
                                    Container(
                                        child: Text(
                                            'Caretaker Guides',
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
                          ),
                          InkWell(
                            onTap: () {
                              _launchURL(_adHotlinesURL);
                              },
                            child: Card(
                              child: Column(
                                  children: <Widget>[
                                    Container(
                                        width: 175.00,
                                        height: 200.00,
                                        decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                            image: ExactAssetImage('assets/background/explore2.jpg'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )
                                    ),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5,
                                        )
                                    ),
                                    Container(
                                        child: Text(
                                            'AD Hotlines',
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
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              _launchURL(_emotionalSupportInfoURL);
                              },
                            child: Card(
                              child: Column(
                                  children: <Widget>[
                                    Container(
                                        width: 175.00,
                                        height: 200.00,
                                        decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                            image: ExactAssetImage('assets/background/explore3.jpg'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )
                                    ),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5,
                                        )
                                    ),
                                    Container(
                                        child: Text(
                                            'Emotional Support Info',
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
                          ),
                          InkWell(
                            onTap: () {
                              _launchURL(_covid19HealthInfoURL);
                            },
                            child: Card(
                              child: Column(
                                  children: <Widget>[
                                    Container(
                                        width: 175.00,
                                        height: 200.00,
                                        decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                            image: ExactAssetImage('assets/background/explore4.jpg'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 5,
                                      )
                                    ),
                                    Container(
                                        child: Text(
                                            'COVID-19 Health Info',
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

  _launchURL(String url) async {
    if (await canLaunch(url))
      await launch(url);
    else
      return;
  }
}