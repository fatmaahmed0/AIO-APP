// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:xo_app/core/constants/colors.dart';

class boxes extends StatelessWidget {
  final String displayElement;
  final Function()? onTap; 
  final int index; 

  const boxes({
    required this.index,
    required this.displayElement, 
    required this.onTap, 
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              width: 3,
              color: AppColor.primary,
              style: BorderStyle.solid,
            ),
            top: BorderSide(
              width: 3,
              color: AppColor.primary,
              style: BorderStyle.solid,
            ),
            left: BorderSide(
              width: 3,
              color: AppColor.primary,
              style: BorderStyle.solid,
            ),
            bottom: BorderSide(
              width: 3,
              color: AppColor.primary,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Center(
          child: Text(
            displayElement, // Display 'X', 'O', or empty
            style: TextStyle(
              color: displayElement == 'X' ? AppColor.white : AppColor.third,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
