import 'package:flutter/material.dart';
import 'package:flutter_opensource_course_day4/helpers/size_config/size_config.dart';
import 'package:flutter_opensource_course_day4/models/ip_data.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<IpDataModel>(context);

    return Container(
      height: ScreenSize.height,
      width: ScreenSize.width,
      child: Center(
        child: _provider.asn == null
            ? CircularProgressIndicator()
            : Text(
                _provider.countryPopulation.toString(),
                style: TextStyle(fontSize: 60.0),
              ),
      ),
    );
  }
}
