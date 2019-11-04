import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return OpacityPageState();
  }
}

class OpacityPageState extends State<OpacityPage>{

  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Column(
        children: <Widget>[
         GestureDetector(
              onTap: (){
                setState(() {
                  isShow = !isShow;
                });
              },
              child: Text('点击这里显示/隐藏图片'),
            ),
          SizedBox(
          height: 20,
          ),
          Opacity(
            opacity: isShow ? 1.0 : 0.0,
            child: Image.network(
                'https://upload.jianshu.io/users/upload_avatars/2706458/18904a3b837c.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240',
                color: Color.fromRGBO(255, 255, 255, 0.5),
                colorBlendMode: BlendMode.modulate
            ),
          )
        ],
      )
    );
  }
}