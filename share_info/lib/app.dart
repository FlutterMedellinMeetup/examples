import 'package:flutter/material.dart';
import 'package:share_info/screens/home_page.dart';

class ShareInfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(title: 'Flutter Share info demo'),
    );
  }
}
