import 'package:flutter/material.dart';
import 'widget/sign_in_form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(

      ),
      alignment: Alignment(0.0,0.0),
      child: SignInForm(),
    );
  }
}