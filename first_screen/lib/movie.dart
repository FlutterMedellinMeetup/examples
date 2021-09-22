import 'package:first_screen/data.dart';
import 'package:first_screen/myAppBar.dart';
import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  static const routename = '/movie';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: movieData[0]['title'],),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(movieData[0]['pathImage']),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              movieData[0]['description'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          )
        ],
      ),
    );
  }

}