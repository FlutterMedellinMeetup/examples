import 'package:flutter/material.dart';

class ShowInfo extends StatelessWidget {
  late final String title;
  late final String description;
  ShowInfo({required this.title, required this.description});
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
