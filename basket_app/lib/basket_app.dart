// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:basket_app/buttons_basket.dart';
import 'package:flutter/material.dart';

class BasketAppScreen extends StatefulWidget {
  const BasketAppScreen({super.key});

  @override
  State<BasketAppScreen> createState() => _BasketAppScreenState();
}

class _BasketAppScreenState extends State<BasketAppScreen> {
  int score_A = 0;
  int score_B = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(context) , body: _body());
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 245, 147, 19),
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back,
          size: 25,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Basketball points counter",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: 'Gowun Batang'),
      ),
    );
  }

  Column _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [team_A(), divider(), team_B(),],
        ),

        SizedBox(
          height: 50,
        ),
        
        reset(),
      ],
    );
  }

  Container reset() {
    return Container(
        child: button(
            text: "Reset",
            ontap: () {
              setState(() {
                score_A = 0;
                score_B = 0;
              });
            }),
      );
  }

  Column team_B() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Team B',
          style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.w200,
          ),
        ),
        Text(
          '$score_B',
          style: TextStyle(
            fontSize: 150,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Container(
          child: Column(
            children: [
              button(
                  text: 'Add 1 point',
                  ontap: () {
                    setState(() {
                      score_B += 1;
                    });
                  }),
              SizedBox(
                height: 50,
              ),
              button(
                  text: 'Add 2 point',
                  ontap: () {
                    setState(() {
                      score_B += 2;
                    });
                  }),
              SizedBox(
                height: 50,
              ),
              button(
                  text: 'Add 3 point',
                  ontap: () {
                    setState(() {
                      score_B += 3;
                    });
                  }),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container divider() {
    return Container(
      width: 2, // Divider width
      height: 500, // Height of the divider
      color: const Color.fromARGB(255, 0, 0, 0),
    );
  }

  Column team_A() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Team A',
          style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.w200,
          ),
        ),
        Text(
          '$score_A',
          style: TextStyle(
            fontSize: 150,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Container(
          child: Column(
            children: [
              button(
                  text: 'Add 1 point',
                  ontap: () {
                    setState(() {
                      score_A += 1;
                    });
                  }),
              SizedBox(
                height: 50,
              ),
              button(
                  text: 'Add 2 point',
                  ontap: () {
                    setState(() {
                      score_A += 2;
                    });
                  }),
              SizedBox(
                height: 50,
              ),
              button(
                  text: 'Add 3 point',
                  ontap: () {
                    setState(() {
                      score_A += 3;
                    });
                  }),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
