import 'package:flutter/material.dart';
import 'package:flutter_fire/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Login Page',
        style: Constants.regularHeading,),
    );
  }
}
