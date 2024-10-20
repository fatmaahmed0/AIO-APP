// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LighterScreen extends StatefulWidget {
  const LighterScreen({super.key});
  @override
  State<LighterScreen> createState() => _LighterScreenState();
}

class _LighterScreenState extends State<LighterScreen> {
  bool switcher = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 233, 233),
      appBar: _appbar(context),
      body: _body(),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 18, 161, 114),
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          size: 25,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Lighter App",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
            color: Colors.white,
            fontFamily: 'Gowun Batang'),
      ),
    );
  }

  Center _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lightbulb,
            color: switcher
                ? Colors.orangeAccent
                : Color.fromARGB(255, 250, 243, 243),
            size: 200,
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                switcher = !switcher;
              });
            },
            color: switcher
                ? Colors.redAccent
                : const Color.fromARGB(255, 47, 150, 100),
            minWidth: 170,
            child: Text(
              switcher ? 'Off' : 'On',
              style: TextStyle(
                fontSize: 40,
                color: const Color.fromARGB(255, 255, 254, 254),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
