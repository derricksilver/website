import 'package:flutter/material.dart';

const int largeScreenSize = 1440;
const int mediumScreenSize = 1148;
const int smallScreenSize = 500;

class Resp extends StatelessWidget {
  late Widget largeScreen;
  late Widget mediumScreen;
  late Widget smallScreen;

  Resp(
      {Key? key,
      required this.largeScreen,
      required this.mediumScreen,
      required this.smallScreen})
      : super(key: key);

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumScreenSize &&
        MediaQuery.of(context).size.width < largeScreenSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= smallScreenSize &&
        MediaQuery.of(context).size.width < mediumScreenSize;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < smallScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = constraints.maxWidth;
        if (_width >= largeScreenSize) {
          return largeScreen;
        } else if (_width < largeScreenSize && _width >= mediumScreenSize) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
