// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:xo_app/boxes.dart';
import 'package:xo_app/core/constants/colors.dart';

class XoApp extends StatefulWidget {
  const XoApp({super.key});

  @override
  State<XoApp> createState() => _XoAppState();
}

class _XoAppState extends State<XoApp> {
  List<String> displayElement = ['', '', '', '', '', '', '', '', ''];
  int o_Score = 0;
  int x_Score = 0;
  int filledBoxes = 0;
  bool isOturn = true;

  void onTap(int index) {
    setState(() {
      if (displayElement[index] == '') {
        if (isOturn) {
          displayElement[index] = 'O';
          filledBoxes++;
        } else {
          displayElement[index] = 'X';
          filledBoxes++;
        }
        isOturn = !isOturn;
      }
      checkWinner();
    });
  }

  void checkWinner() {
    if (displayElement[0] == displayElement[1] &&
        displayElement[0] == displayElement[2] &&
        displayElement[0] != '') {
      if (displayElement[0] == 'O') {
        o_Score++;
      } else {
        x_Score++;
      }
      restgame();
    }
    if (displayElement[3] == displayElement[4] &&
        displayElement[3] == displayElement[5] &&
        displayElement[3] != '') {
      if (displayElement[3] == 'O') {
        o_Score++;
      } else {
        x_Score++;
      }
      restgame();
    }
    if (displayElement[6] == displayElement[7] &&
        displayElement[6] == displayElement[8] &&
        displayElement[6] != '') {
      if (displayElement[6] == 'O') {
        o_Score++;
      } else {
        x_Score++;
      }
      restgame();
    }

    if (displayElement[0] == displayElement[3] &&
        displayElement[0] == displayElement[6] &&
        displayElement[0] != '') {
      if (displayElement[0] == 'O') {
        o_Score++;
      } else {
        x_Score++;
      }
      restgame();
    }
    if (displayElement[1] == displayElement[4] &&
        displayElement[1] == displayElement[7] &&
        displayElement[1] != '') {
      if (displayElement[1] == 'O') {
        o_Score++;
      } else {
        x_Score++;
      }
      restgame();
    }
    if (displayElement[2] == displayElement[5] &&
        displayElement[2] == displayElement[8] &&
        displayElement[2] != '') {
      if (displayElement[2] == 'O') {
        o_Score++;
      } else {
        x_Score++;
      }
      restgame();
    }

    if (displayElement[0] == displayElement[4] &&
        displayElement[0] == displayElement[8] &&
        displayElement[0] != '') {
      if (displayElement[0] == 'O') {
        o_Score++;
      } else {
        x_Score++;
      }
      restgame();
    }
    if (displayElement[2] == displayElement[4] &&
        displayElement[2] == displayElement[6] &&
        displayElement[2] != '') {
      if (displayElement[2] == 'O') {
        o_Score++;
      } else {
        x_Score++;
      }
    } else if (filledBoxes == 9) {
      displayElement = ['', '', '', '', '', '', '', '', ''];

      filledBoxes = 0;
      isOturn = true;
    }
  }

  void restgame() {
    setState(() {
      displayElement = ['', '', '', '', '', '', '', '', ''];

      filledBoxes = 0;
      isOturn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.secondary,
        appBar: _appbar(context),
        body: Column(
          children: [
            SizedBox(height: 30),
            _score_board(),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    boxes(
                        index: 0,
                        displayElement: displayElement[0],
                        onTap: () => onTap(0)),
                    boxes(
                        index: 1,
                        displayElement: displayElement[1],
                        onTap: () => onTap(1)),
                    boxes(
                        index: 2,
                        displayElement: displayElement[2],
                        onTap: () => onTap(2))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    boxes(
                        index: 3,
                        displayElement: displayElement[3],
                        onTap: () => onTap(3)),
                    boxes(
                        index: 4,
                        displayElement: displayElement[4],
                        onTap: () => onTap(4)),
                    boxes(
                        index: 5,
                        displayElement: displayElement[5],
                        onTap: () => onTap(5))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    boxes(
                        index: 6,
                        displayElement: displayElement[6],
                        onTap: () => onTap(6)),
                    boxes(
                        index: 7,
                        displayElement: displayElement[7],
                        onTap: () => onTap(7)),
                    boxes(
                        index: 8,
                        displayElement: displayElement[8],
                        onTap: () => onTap(8))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    displayElement = ['', '', '', '', '', '', '', '', ''];
                    filledBoxes = 0;
                    isOturn = true;
                  });
                },
                color: AppColor.fourth,
                minWidth: 250,
                child: Text(
                  "NEW GAME",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    displayElement = ['', '', '', '', '', '', '', '', ''];
                    o_Score = 0;
                    x_Score = 0;
                    filledBoxes = 0;
                    isOturn = true;
                  });
                },
                color: AppColor.fourth,
                minWidth: 250,
                child: Text(
                  "REST GAME",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _score_board() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Player X Column
        Column(
          children: [
            Text(
              'Player X',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
                color: AppColor.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              x_Score.toString(),
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w200,
                color: AppColor.white,
              ),
            ),
          ],
        ),

        // Separator
        Text(
          ":",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: AppColor.white,
          ),
        ),

        // Player O Column
        Column(
          children: [
            Text(
              'Player O',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
                color: AppColor.third,
              ),
            ),
            SizedBox(height: 10),
            Text(
              o_Score.toString(),
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w200,
                color: AppColor.third,
              ),
            ),
          ],
        ),
      ],
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.third,
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
        "TIC TAC TOE",
        textAlign: TextAlign.center,
        style: TextStyle(
            letterSpacing: 2,
            fontSize: 40,
            fontWeight: FontWeight.w300,
            color: Colors.white,
            fontFamily: 'Gowun Batang'),
      ),
    );
  }
}
