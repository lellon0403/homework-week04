import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink[100],  //핑크 배경색 적용
      body: SafeArea(  //시스템 UI 피해서 UI 그리기
        top: true,
        bottom: false,
        child: Column(
          //위아래 끝에 위젯 배치
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          //반대축 최대 크기로 늘리기
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(),
            _CoupleImage(),
          ],
        )
      ));
  }
}

class _DDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(// 최상단 U&I 글자
        'U&I',
        ),
        const SizedBox(height: 16.0,),
        Text( //두 번째 글자
        '우리 처음 만난 날',
        ),
        
      ],
    );
  }
}

class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(  //이미지 중앙 정렬
      child: Image.asset(
        'asset/img/middle_image.png',

        //화면의 반만큼 높이 구현
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
    }
}