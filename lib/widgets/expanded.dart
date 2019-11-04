import 'package:flutter/material.dart';
import 'others.dart';

/**
 * 自动拉伸子控件的宽/高
 */
class ExpandedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ChildWidget(),
                ChildWidget(),
                ChildWidget(),
                ChildWidget(),
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Expanded(
                  child: ChildWidget(),
                ),
                ChildWidget(),
                Expanded(
                  child: ChildWidget(),
                ),
                ChildWidget(),
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: ChildWidget(),
                ),
                ChildWidget(),
                Expanded(
                  flex: 1,
                  child: ChildWidget(),
                ),
                ChildWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

