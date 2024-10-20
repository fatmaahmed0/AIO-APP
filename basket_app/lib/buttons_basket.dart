// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class button extends StatelessWidget {
  final text;
  final void Function()? ontap;
  const button({
    required this.text,
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.orange,
      ),
      child: InkWell(
        onTap: ontap,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
