import 'package:first_screen/data.dart';
import 'package:first_screen/myCard.dart';
import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        for(final movie in movieData)
          MyCard(title: movie['title'], imageUrl: movie['pathImage'],)
      ],
    );
  }

}