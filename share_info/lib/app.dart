import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_info/animations/fade_transition.dart';
import 'package:share_info/animations/scale_trasition.dart';
import 'package:share_info/models/info.dart';
import 'package:share_info/provider/cat_info.dart';
import 'package:share_info/provider/data_info.dart';
import 'package:share_info/screens/hello_world.dart';
import 'package:share_info/screens/home_page.dart';
import 'package:share_info/screens/show_info.dart';
import 'package:share_info/utils/app_routes.dart';

class ShareInfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => InfoProvider()),
        ChangeNotifierProvider(create: (context) => CatInfoProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage(title: 'Flutter Share info demo'),
        // routes: {
        //   AppRoutes.helloWorld: (context) => HelloWorld(
        //         title: 'hola a todo',
        //       ),
        //   AppRoutes.show: (context) =>
        //       ShowInfo(infoData: Info('hola', 'a', 'todos'))
        // },
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case (AppRoutes.helloWorld):
              return ScaleTransitionAnimation(
                  widget: HelloWorld(title: 'title'));

            case (AppRoutes.show):
              final Info data = settings.arguments as Info;
              return FadeTransitionAnimation(widget: ShowInfo(infoData: data));

            default:
              return MaterialPageRoute(
                  builder: (context) => HomePage(title: 'Un titulo'));
          }
        },
      ),
    );
  }
}
