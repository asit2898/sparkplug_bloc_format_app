import 'package:flutter/material.dart';
import 'user_details_bloc.dart';
export 'user_details_bloc.dart';
class UserDetailsBlocProvider extends InheritedWidget{
  final bloc = UserDetailsBloc();

  UserDetailsBlocProvider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static UserDetailsBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType <UserDetailsBlocProvider>()).bloc;
  }
}