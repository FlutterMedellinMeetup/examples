import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_info/models/info.dart';
import 'package:share_info/provider/cat_info.dart';
import 'package:share_info/provider/data_info.dart';

class ShowInfo extends StatelessWidget {
  final Info infoData;

  ShowInfo({required this.infoData});
  @override
  Widget build(BuildContext context) {
    Widget _helloPage = Scaffold(
      appBar: AppBar(
          title: Text(
        infoData.title,
        textScaleFactor: 2,
      )),
      body: Center(
        child: Column(children: [
          Text(infoData.subTitle),
          Text(infoData.description),
          Consumer<InfoProvider>(builder: (contex, info, _) => Text(info.user)),
          Consumer<CatInfoProvider>(
              builder: (contex, info, _) => Text(info.cat))
        ]),
      ),
    );
    return _helloPage;
  }
}
