import 'package:flutter/material.dart';


class ChildWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      width: 50,
      height: 50,
      color: Colors.purple,
    );
  }
}