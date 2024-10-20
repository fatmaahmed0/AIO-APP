// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:workshop/core/constants/colors.dart';
import 'package:workshop/core/routes/routes_name.dart';
import 'package:workshop/widgets/starter_app_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: AppColor.bg,
      body: _body(),
    );
  }

  SafeArea _body() {
    return const SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //! Remove the comment then add arguments 
        StarterAppItem(images: 'lamp', title: 'LighterApp', routeName: RoutesName.lighterApp),
        StarterAppItem(images: 'basket', title: 'BasketApp', routeName: RoutesName.basketApp,),
        StarterAppItem(images: 'calc', title: 'CalculatorApp', routeName: RoutesName.calculatorApp,),
        StarterAppItem(images: 'xo', title: 'XoApp', routeName: RoutesName.xoApp,),
        
      ],
    ),
    ));
  }

  AppBar _appBar() {
    return AppBar(title: Text('Home Page',
    style: TextStyle(
      color: AppColor.white
    ),
    ),
    backgroundColor: AppColor.black,
    );
  }
}
