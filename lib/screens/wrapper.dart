import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_opensource_course_day4/screens/screen2/screen2.dart';
import 'package:provider/provider.dart';

import '../helpers/size_config/size_config.dart';
import 'screen1/screen1.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    var _auth = Provider.of<User?>(context);
    return _auth == null ? Screen2() : Screen1();
  }
}
