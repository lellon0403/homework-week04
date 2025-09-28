import 'package:flutter/material.dart';

//웹뷰 플러그인 불러오기
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {

  // WebViewController 선언
  WebViewController webViewController = WebViewController()
  
  // WebViewController의 loadRequest() 함수를 실행합니다.
  ..loadRequest(Uri.parse('https://blog.codefactory.ai'))

  //JavaScript가 제한 없이 실행될 수 있도록 합니다..
  ..setJavaScriptMode(JavaScriptMode.unrestricted);
    
  //const 생성자 
  HomeScreen({Key? key}) : super(key : key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  //앱바 위젯 추가
      appBar: AppBar( 

        //배경색 지정
        backgroundColor: Colors.orange,

        //앱 타이틀 설정
        title: Text('Code Factory'),

        //가운데 정렬
        centerTitle: true,

        //AppBar에 액션 버튼을 추가할 수 있는 매개변수
        actions: [
          IconButton(

            //아이콘을 눌렀을 때 실행할 콜백 함수
            onPressed: (){
              //웹뷰 위젯에서 사이트 전환하기
              webViewController.loadRequest(Uri.parse('https://blog.codefactory.ai'));
            },

            // 홈 버튼 아이콘 설정
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),

      

      body: WebViewWidget(  //웹뷰 위젯 추가하기 (에러 잠시 무시하기)
      controller: webViewController,  //에러 발생
        
      ),


      );
  }
  
}