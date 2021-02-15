import 'package:flutter/material.dart';
import 'package:mentoring_batch4/week1_task1/response_detail_page.dart';
import 'package:mentoring_batch4/week1_task1/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mentoring Batch 4',
      theme: ThemeData(),
      home: TaskPage(),
    );
  }
}
