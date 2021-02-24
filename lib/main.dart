import 'package:flutter/material.dart';
import 'package:mentoring_batch4/task_page.dart';
import 'package:mentoring_batch4/week1_task1/sign_up.dart';

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
