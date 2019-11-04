import 'package:flutter/material.dart';
import 'widgets/safearea.dart';
import 'widgets/expanded.dart';
import 'widgets/wrap.dart';
import 'widgets/animatedcontainer.dart';
import 'widgets/Opacity.dart';

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
            MaterialButton(
              child: Text('Expanded'),
              onPressed: (){
                _toNextPage(context, 'Expanded');
              },
            ),
            MaterialButton(
              child: Text('Wrap'),
              onPressed: (){
                _toNextPage(context, 'Wrap');
              },
            ),
            MaterialButton(
              child: Text('AnimatedContainer'),
              onPressed: (){
                _toNextPage(context, 'AnimatedContainer');
              },
            ),
            MaterialButton(
              child: Text('Opacity'),
              onPressed: (){
                _toNextPage(context, 'Opacity');
              },
            ),
          ],
        ),
      ),
    );
  }

  void _toNextPage(BuildContext context, String pageName){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      if(pageName == 'SafeArea') {
        return SafeAreaPage();
      }else if(pageName == 'Expanded'){
        return ExpandedPage();
      }else if(pageName == 'Wrap'){
        return WrapPage();
      }else if(pageName == 'AnimatedContainer'){
        return AnimatedContainerPage();
      }else if(pageName == 'Opacity'){
        return OpacityPage();
      }
    }));
  }
}
