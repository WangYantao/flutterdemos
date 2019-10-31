import 'package:flutter/material.dart';
import 'widgets/safearea.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutterdemos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text('SafeArea'),
              onPressed: (){
                _toNextPage(context, 'SafeArea');
              },
            ),
          ],
        ),
      ),
    );
  }

  void _toNextPage(BuildContext context, String pageName){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return SafeAreaPage();
    }));
  }
}
