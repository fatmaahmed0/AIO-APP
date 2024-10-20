// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StarterAppItem extends StatelessWidget {
  final String images;
  final String title;
  final String routeName;
  const StarterAppItem({
    super.key,
    required this.images,
    required this.title,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/$images.jpg',
            height: 80,
            width: 80,
            fit: BoxFit.contain,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Gowun Batang'),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, routeName);
            },
            child: Icon(
              Icons.arrow_circle_right_outlined,
              color: Colors.blue,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
