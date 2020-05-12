import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sparkplugblocformat/src/blocs/user_details_bloc_provider.dart';
import 'drawer.dart';
import '../src/blocs/user_details_bloc_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'drawer.dart';

class MyHomePage extends StatefulWidget {
  final String _emailAddress;
  MyHomePage(this._emailAddress);

  @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  UserDetailsBloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = UserDetailsBlocProvider.of(context);
  }

  //No bloc dispose methods needed right now as no streams are being created in
  //bloc
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the Ap p.build method, and use it to set our appbar title.
        title: Text("Walmart Assists"),
      ),
      drawer: AppDrawer(widget._emailAddress),
      body: StreamBuilder(
          stream: _bloc.myDetails(widget._emailAddress),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            DocumentSnapshot doc = snapshot.data;
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text(
                      "Hi! Welcome to Walmart!",
                      style: TextStyle(fontSize: 24),
                    ),

                    Text(
                      "Current Credits:",
                      style: TextStyle(fontSize: 24),
                    ),

                    Text(
                      _bloc.getCredits(doc).toString(),
                      style: TextStyle(fontSize: 24),
                    ),

                    FloatingActionButton(
                      onPressed: () {
                        _bloc.incrementCredits(doc, widget._emailAddress, 10);
                      },
                      child: Icon(Icons.add),
                      backgroundColor: Colors.green,
                    ),


                  ],
                )
              ],
            );
          }),
    );
  }
}
