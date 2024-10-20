// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class OtherOperation extends StatelessWidget {
  final String text;
  final void Function()? onpressed;
  const OtherOperation({
    required this.text,
    required this.onpressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      minWidth: 97.5,
      height: 90.9,
      color: const Color.fromARGB(255, 143, 179, 209),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}

class Numbers extends StatelessWidget {
  final String text;
  final void Function()? onpressed;
  const Numbers({
    required this.text,
    required this.onpressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      minWidth: 97.5,
      height: 90.9,
      color: const Color.fromARGB(255, 250, 254, 255),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}

class Operation extends StatelessWidget {
  final String text;
  final void Function()? onpressed;
  const Operation({
    required this.text,
    required this.onpressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      minWidth: 97.5,
      height: 90.9,
      color: const Color.fromARGB(255, 15, 97, 145),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w400,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}

class Equal extends StatelessWidget {
  final String text;
  final void Function()? onpressed;
  const Equal({
    required this.text,
    required this.onpressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      minWidth: 97.5,
      height: 90.9,
      color: const Color.fromARGB(255, 228, 149, 47),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
