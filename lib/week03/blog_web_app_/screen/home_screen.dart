import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController();

  //const 생성자 
  HomeScreen({Key? key}) : super(key : key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  //앱바 위젯 추가
      appBar: AppBar( 

        //배경색 지정
        backgroundColor: const Color.fromARGB(255, 9, 9, 9),

        //앱 타이틀 설정
        title: Text('Code Factory'),

        //가운데 정렬
        centerTitle: true,
      ),
      body: Text('home Screen'),
      );
  }
  
}