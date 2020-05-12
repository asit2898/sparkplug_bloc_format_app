import 'package:sparkplugblocformat/src/blocs/user_details_bloc.dart';
import 'package:sparkplugblocformat/src/blocs/user_details_bloc_provider.dart';
import 'package:sparkplugblocformat/ui/homePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../utils/strings.dart';
import 'package:flutter/material.dart';
import '../../src/blocs/login_bloc_provider.dart';
import'../taskPage.dart';
//import '../goals_list.dart';

class ChangingHeader extends StatefulWidget {

  final String _emailAddress;
  ChangingHeader(this._emailAddress);

  @override
  ChangingHeaderState createState() {
    return ChangingHeaderState();
  }
}

class ChangingHeaderState extends State<ChangingHeader> {
  UserDetailsBloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = UserDetailsBlocProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
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
                                          .contain,
                                      // otherwise the logo will be tiny
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
                                  child: Text('Display credits here'),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              )))
    ]);
  }

}