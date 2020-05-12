import 'package:flutter/material.dart';
import '../ui/login.dart';
import 'blocs/login_bloc_provider.dart';
import 'blocs/user_details_bloc_provider.dart';
import 'blocs/tasks_bloc_provider.dart';
import '../ui/taskPage.dart';
import '../ui/homePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginBlocProvider(
      child: UserDetailsBlocProvider(
        //child: TasksBlocProvider(
          child: MaterialApp(

            theme: ThemeData(
              primarySwatch: Colors.teal,
              primaryColor: Colors.teal,
              //primaryColor: Colors.teal,
            ),
            home: Scaffold(
              appBar: AppBar(
                title: Center(
                  child: Text(
                    "Welcome to Walmart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                //backgroundColor: Colors.teal,
                elevation: 0.0,
              ),
              body: LoginScreen(),
            ),
          ),
        //),
      ),
    );
  }
}
