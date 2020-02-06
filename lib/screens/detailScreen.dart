import 'package:flutter/material.dart';
import 'package:university_app/university.dart';

class DetailScreen extends StatelessWidget {
  final University uni;
  DetailScreen(University this.uni );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(uni.name),
      ),
      body: Text('Text'),
    );
  }
}
