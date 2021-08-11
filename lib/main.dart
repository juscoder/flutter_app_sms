//import 'package:componentes/ui/pages/home_temp.dart';
//import 'package:app_sms/ui/pages/home_temp.dart';
import 'package:app_sms/ui/pages/home_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CALL RECORDER',
      home: HomePageTemp(),
    );
  }
}
