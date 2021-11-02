import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_info/animations/fade_transition.dart';
import 'package:share_info/models/info.dart';
import 'package:share_info/provider/cat_info.dart';
import 'package:share_info/provider/data_info.dart';
import 'package:share_info/screens/hello_world.dart';
import 'package:share_info/utils/app_routes.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final providerInfo = Provider.of<InfoProvider>(context);
    final providerCat = Provider.of<CatInfoProvider>(context);
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<InfoProvider>(
                builder: (contex, info, _) => Text(info.user)),
            ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.helloWorld),
                child: Text('Hello World')),
            ElevatedButton(
                onPressed: () {
                  providerInfo.user = 'Mafer';
                  providerCat.cat = 'Sushi';
                  Navigator.of(context).pushNamed(AppRoutes.show,
                      arguments: Info('Esto', 'Es', 'la data compartida'));
                },
                child: Text('Show Info'))
          ],
        )));
  }
}
