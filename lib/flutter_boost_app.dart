import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:tiger_flutter_package/tiger_home_page.dart';

class FlutterBoostApp
 extends StatefulWidget {
  final Widget child;

  FlutterBoostApp
  ({Key key, this.child}) : super(key: key);

  _FlutterBoostAppState createState() => _FlutterBoostAppState();
}

class _FlutterBoostAppState extends State<FlutterBoostApp> {
  @override
  void initState() { 
    super.initState();
    FlutterBoost.singleton.registerPageBuilders({
      "tiger" : (pageName,parameter,_) => TigerHomePage()
    });
    FlutterBoost.handleOnStartPage();
  }


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterBoost App',
      builder: FlutterBoost.init(),
      home: Container()
    );
  }
}