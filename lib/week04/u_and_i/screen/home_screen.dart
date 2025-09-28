import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Text('Home Screen'),
    );
  }
}

class _DDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('DDay Widget');
  }
}

class _CoupleImage extends StstelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Couple Image Widget');
  }
}