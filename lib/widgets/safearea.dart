import 'package:flutter/material.dart';

class SafeAreaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SafeAreaPageState();
  }
}

class SafeAreaPageState extends State<SafeAreaPage> {
  bool useSafeArea = true;

  void changeUseSafeArea() {
    setState(() {
      useSafeArea = !useSafeArea;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget contentWidget = ShareWidget(
      useSafeArea: useSafeArea,
      changeUseSafeArea: changeUseSafeArea,
      child: Content(),
    );

    return useSafeArea
        ? SafeArea(
            child: contentWidget,
          )
        : contentWidget;
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ShareWidget shareWidget = ShareWidget.of(context);

    return Scaffold(
      body: Center(
        child: MaterialButton(
            onPressed: shareWidget.changeUseSafeArea,
            color: Colors.blue,
            child: Text(
              '点击使用/不使用safearea',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}

class ShareWidget extends InheritedWidget {
  final bool useSafeArea;
  final Function() changeUseSafeArea;

  ShareWidget(
      {Key key,
      @required this.useSafeArea,
      @required this.changeUseSafeArea,
      @required Widget child})
      : super(key: key, child: child);

  static ShareWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ShareWidget);
  }

  @override
  bool updateShouldNotify(ShareWidget oldWidget) {
    return useSafeArea != oldWidget.useSafeArea;
  }
}
