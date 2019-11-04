import 'package:flutter/material.dart';
import 'others.dart';

class WrapPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<ChildWidget> children = List();
    for(int i = 0; i < 18; i++){
      children.add(ChildWidget());
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap'),
      ),
      body: Wrap(
        alignment: WrapAlignment.spaceBetween,
        direction: Axis.vertical,
        children: children,
      ),
    );
  }
}