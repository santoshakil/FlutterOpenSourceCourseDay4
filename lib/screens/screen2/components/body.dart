import 'package:flutter/material.dart';
import 'package:flutter_opensource_course_day4/apis/auth.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String mail = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (v) => mail = v,
        ),
        TextField(
          onChanged: (v) => pass = v,
        ),
        ElevatedButton(
          onPressed: () => Auth.signup(mail, pass),
          child: Text('SignIn'),
        ),
      ],
    );
  }
}
