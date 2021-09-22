import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3)
              )
            ],
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/user.jpg'),
              fit: BoxFit.cover
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Esteban Toledo Jaramillo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Subscribanse',
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic
            ),
          ),
        )
      ],
    );
  }

}