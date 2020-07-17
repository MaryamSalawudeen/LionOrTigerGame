import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutternotebook5th/ep425_daily_activity_app/dilay_main_page.dart';

class DailyActivityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      home: DailyMainPage(),
    );
  }
}
