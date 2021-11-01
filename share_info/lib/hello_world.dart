import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  late final String title;
  late final String description = "Hello World";
  HelloWorld({required this.title});
  @override
  Widget build(BuildContext context) {
    Widget _helloPage = Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(description),
      ),
    );
    return _helloPage;
  }
}
