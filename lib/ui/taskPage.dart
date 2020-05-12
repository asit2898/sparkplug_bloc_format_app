// Designing the tasks page here

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sparkplugblocformat/ui/homePage.dart';
import 'drawer.dart';
//import 'package:walmartsparkmyapp/task.dart';


class TasksPage extends StatelessWidget {
  static const String routeName = '/tasks';
  final String _emailAddress;
  TasksPage(this._emailAddress);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          //drawer: AppDrawer(),
          appBar: AppBar(
            bottom: TabBar(
                tabs:[
                  Tab(icon: Icon(Icons.assignment)),
                  Tab(icon: Icon(Icons.assignment_turned_in)),
                ]
            ),
            title: Text("Tasks"),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.home),onPressed: () =>  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(_emailAddress)))
              ),

            ],
          ),
          body: TabBarView(children: [
            IncompleteTasks(),
            CompletedTasks(),
          ]),
        )
    );
  }
}
/////////////////////////////////////////////////////////////////////////

//final completed_Tasks = <Task>[];
//final incomplete_Tasks = <Task>[];

// Define the complete task stateful widget functioning here
class CompletedTasksState extends State<CompletedTasks>{
  @override
  Widget build(BuildContext context) {

  }
}

/////////////////////////////////////////////////////////////////


// Define the Incomplete task stateful widget functioning here
class IncompleteTasksState extends State<IncompleteTasks>{
  @override
  Widget build(BuildContext context) {

  }
}

//////////////////////////////////////////////////////////////////
// Make the widgets according to earlier definitions

class CompletedTasks extends StatefulWidget {
  @override
  CompletedTasksState createState() => CompletedTasksState();
}

class IncompleteTasks extends StatefulWidget {
  @override
  IncompleteTasksState createState() => IncompleteTasksState();
}

////////////////////////////////////////////////////////////////////
/*

    return new Scaffold(
        appBar: AppBar(
          title: Text("Tasks"),
          actions: <Widget>[
          IconButton(icon: Icon(Icons.home),onPressed: () => Navigator.of(context).pushReplacementNamed('/home')),
          ],
        ),
        drawer: AppDrawer(),
        body:
    );
  }
}

 */