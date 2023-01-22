import 'package:sleducation/pages/homepage.dart';

import 'package:flutter/material.dart';
import 'package:sleducation/pages/coursepage/coursepagehome.dart';
import 'package:sleducation/pages/forWatch.dart';
class HomePagebuilder extends StatefulWidget {

  const HomePagebuilder({Key? key}) : super(key: key);
  @override
  _HomeScreen createState() => _HomeScreen();
}
class _HomeScreen extends State<HomePagebuilder> {

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        debugPrint('Host device screen width: ${constraints.maxWidth}');

        // Watch-sized device
        if (constraints.maxWidth < 300) {
          return watchHomePage();
        }
        // Phone-sized device
        else {
          return HomeScreen();
        }
      },
    );
      }
}

/*return LayoutBuilder(
  builder: (BuildContext context, BoxConstraints constraints) {
    debugPrint('Host device screen width: ${constraints.maxWidth}');

    // Watch-sized device
    if (constraints.maxWidth < 300) {
      return DailyForecastViewWatch(this);
    }
    // Phone-sized device
    else {
      return DailyForecastViewPhone(this);
    }
  },
);*/