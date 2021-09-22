import 'package:first_screen/movie.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  MyCard({
    required this.title,
    required this.imageUrl
  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Movie.routename);
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageUrl)
                  )
              ),
            ),
            Expanded(
                child: Text(title, textAlign: TextAlign.center)
            )
          ],
        ),
      ),
    );
  }

}