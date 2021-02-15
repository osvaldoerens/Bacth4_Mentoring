import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentoring_batch4/week1_task1/screens/home_page.dart';
import 'package:mentoring_batch4/week1_task1/screens/login_page.dart';
import 'package:mentoring_batch4/week1_task2/payment_page.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Task 1"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }
            ),
            RaisedButton(
                child: Text("Task 2"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
                }
            ),
          ],
        ),
      )
    );
  }
}


