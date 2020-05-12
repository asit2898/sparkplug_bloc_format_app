//Drawer Design and Definition

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'taskPage.dart';
import 'widget/recommendations.dart';


class AppDrawer9 extends StatelessWidget {
  final String _emailAddress;
  AppDrawer9(this._emailAddress);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader3(),
          ListTile(
            title: Text(
              'Personalized for you',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          _createDrawerItem(
              icon: Icons.shopping_cart,
              text: 'Walmart Recommends',
              onTap:  () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RandomWords(_emailAddress)))
            //TODO replace this properly
          ),
          _createDrawerItem(
            icon: Icons.explore,
            text: 'Best route for me',
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text(
              'Earn credits',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          _createDrawerItem(
              icon: Icons.assignment,
              text: 'Tasks',
              //onTap: () => Navigator.of(context).pushReplacementNamed('/tasks'),
              onTap:  () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TasksPage(_emailAddress)))
          ),
          _createDrawerItem(icon: Icons.spa, text: 'Badges'),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text(
              'Options',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          _createDrawerItem(icon: Icons.face, text: 'My Profile'),
          _createDrawerItem(icon: Icons.monetization_on, text: 'Credits'),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Divider(),
        ],
      ),
    );
  }


  Widget _createHeader3() {
    return DrawerHeader(
        decoration: new BoxDecoration(color: Colors.teal),
        margin: EdgeInsets.zero,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Row(children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(
                  left: 16.0, right: 0, top: 16.0, bottom: 16.0),
              //color: Colors.amber,
              height: 200,
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "U",
                    style: TextStyle(fontSize: 32.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Center(
                  child: Container(
                    height: 80.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 12.0, right: 8.0),
                            //color: Colors.amber,
                            height: 3,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'User_name',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    //padding: EdgeInsets.symmetric(horizontal: 8.0),
                                    //color: Colors.green,
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: FittedBox(
                                          fit: BoxFit
                                              .contain, // otherwise the logo will be tiny
                                          child: Icon(
                                            Icons.local_atm,
                                            color: Colors.amberAccent,
                                            size: 30.0,

                                          ),
                                        ),
                                      )),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 2.0, left: 4.0),
                                    //color: Colors.pink,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '10,000',
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  )))
        ])
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}



/////////////////////////////////


/*
  Widget _createHeader2() {
    return UserAccountsDrawerHeader(
      accountName: Text(
        "Username",
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w700),
      ),
      accountEmail: Text("33"),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(
          "A",
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }

  Widget _createHeader() {
    return Container(
        height: 250,
        color: Colors.teal,
        child: DrawerHeader(
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            padding: EdgeInsets.zero,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 32.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Username',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Text(
                        '10,000',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain, // otherwise the logo will be tiny
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.amberAccent,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
  */