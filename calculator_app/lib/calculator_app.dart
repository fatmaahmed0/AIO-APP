// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_import

import 'dart:ui';
import 'package:calculator_app/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String expression = '';
  String result = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Column(
        
        children: [
          
          Expanded(child: exe_result(),),
          row_1(),
          row_2(),
          row_3(),
          row_4(),
          row_5(),
        ],
      ),
    );
  }

  Row row_5() {
    return Row(
          children: [
            Numbers(
                text: '0',
                onpressed: () {
                  setState(() {
                    expression += '0';
                  });
                }),
            Numbers(
                text: '.',
                onpressed: () {
                  setState(() {
                    expression += '.';
                  });
                }),
            Equal(
                text: '=',
                onpressed: () {
                  setState(() {
                    Parser p = Parser();
                    Expression exp = p.parse(expression);
                    double eval =
                        exp.evaluate(EvaluationType.REAL, ContextModel());
                    result = eval.toString();
                  });
                }),
            Operation(
                text: '+',
                onpressed: () {
                  setState(() {
                    expression += '+';
                  });
                }),
          ],
        );
  }

  Row row_4() {
    return Row(
          children: [
            Numbers(
                text: '1',
                onpressed: () {
                  setState(() {
                    expression += '1';
                  });
                }),
            Numbers(
                text: '2',
                onpressed: () {
                  setState(() {
                    expression += '2';
                  });
                }),
            Numbers(
                text: '3',
                onpressed: () {
                  setState(() {
                    expression += '3';
                  });
                }),
            Operation(
                text: '-',
                onpressed: () {
                  setState(() {
                    expression += '-';
                  });
                }),
          ],
        );
  }

  Row row_3() {
    return Row(
          children: [
            Numbers(
                text: '4',
                onpressed: () {
                  setState(() {
                    expression += '4';
                  });
                }),
            Numbers(
                text: '5',
                onpressed: () {
                  setState(() {
                    expression += '5';
                  });
                }),
            Numbers(
                text: '6',
                onpressed: () {
                  setState(() {
                    expression += '6';
                  });
                }),
            Operation(
                text: '*',
                onpressed: () {
                  setState(() {
                    expression += '*';
                  });
                }),
          ],
        );
  }

  Row row_2() {
    return Row(
          children: [
            Numbers(
                text: '7',
                onpressed: () {
                  setState(() {
                    expression += '7';
                  });
                }),
            Numbers(
                text: '8',
                onpressed: () {
                  setState(() {
                    expression += '8';
                  });
                }),
            Numbers(
                text: '9',
                onpressed: () {
                  setState(() {
                    expression += '9';
                  });
                }),
            Operation(
                text: '/',
                onpressed: () {
                  setState(() {
                    expression += '/';
                  });
                }),
          ],
        );
  }

  Row row_1() {
    return Row(
          children: [
            OtherOperation(
                text: 'C',
                onpressed: () {
                  setState(() {
                    expression = "";
                    result = "0";
                  });
                }),
            OtherOperation(text: '+/-', onpressed: () {}),
            OtherOperation(
                text: '%',
                onpressed: () {
                  setState(() {
                    expression += '%';
                  });
                }),
            OtherOperation(
                text: 'DEL',
                onpressed: () {
                  setState(() {
                    expression =
                        expression.substring(0, expression.length - 1);
                  });
                }),
          ],
        );
  }

  Container exe_result() {
    return Container(
          width: double.infinity,
          height: 200,
          color: Color.fromARGB(255, 126, 117, 117),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    expression,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w100),
                  ),
                  Text(
                    result,
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                ]),
          ),
        );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
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
        "Calculator",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
