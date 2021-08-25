import 'package:app/screens/add_listing_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/login_acc_screen.dart';
import 'package:app/screens/merchant_screen.dart';
import 'package:app/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'MazzardH-SemiBold'),
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
