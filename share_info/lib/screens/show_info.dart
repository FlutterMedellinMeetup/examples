import 'package:flutter/material.dart';

class ShowInfo extends StatelessWidget {
  late final String title;
  late final String subTitle;
  late final String description;
  ShowInfo({required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    Widget _helloPage = Scaffold(
      appBar: AppBar(
          title: Text(
        title,
        textScaleFactor: 2,
      )),
      body: Center(
        child: Column(children: [
          Text(subTitle),
          Text(description),
        ]),
      ),
    );
    return _helloPage;
  }
}
