import 'package:flutter/material.dart';
import 'constance.dart';



class MyCard extends StatelessWidget {

  MyCard({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label, style: labelTextStyle,
        )
      ],
    );
  }
}