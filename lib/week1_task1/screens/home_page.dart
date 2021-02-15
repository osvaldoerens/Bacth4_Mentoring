import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentoring_batch4/week1_task1/response_detail_page.dart';
import 'package:mentoring_batch4/week1_task1/screens/detail_home_page.dart';

class HomePage extends StatefulWidget {

  final titleHomePage;
  final descriptionHomePage;

  const HomePage({Key key, this.titleHomePage, this.descriptionHomePage}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Blogs", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.orange,
        leading: GestureDetector(
          child: Icon(Icons.menu, color: Colors.black,),
        ),
        actions: [
          IconButton(icon: Icon(Icons.login_outlined, color: Colors.black,), onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TaskPage()));
          })
        ],
      ),
    body: Container(
      padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ListTile(
              leading: CircleAvatar(radius: 50.0, backgroundColor: Colors.brown, child: Text("W", style: TextStyle(fontSize: 20,color: Colors.white),) ,),
              title: Text("What Is Dart ?",
                style: TextStyle(color: Colors.black,fontSize: 15.0, fontWeight: FontWeight.bold),),
              subtitle:  Text("Dart is a client-optimized programming language for apps on multiple platforms. It is developed by Google and is used to build mobile, desktop, server, and web applications. Dart is an object-oriented, class-based, garbage-collected language with C-style syntax. Dart can compile to either native code or JavaScript.",
                style: TextStyle(color: Colors.black,fontSize: 15.0,), maxLines: 5,),
              trailing: Text("Jan 26, 2021")
          ),
          ListTile(
            leading: CircleAvatar(radius: 50.0, backgroundColor: Colors.green, child: Text("W", style: TextStyle(fontSize: 20,color: Colors.white),) ,),
            title: Text("What Is Flutter ?",
              style: TextStyle(color: Colors.black,fontSize: 15.0, fontWeight: FontWeight.bold),),
            subtitle:  Text("Flutter is Google's UI toolkit for building beautiful, natively compiled application for mobile, web, and desktop from a single codebase",
              style: TextStyle(color: Colors.black,fontSize: 15.0,), maxLines: 5,),
            trailing: Text("Jan 26, 2021"),
          ),
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_sharp),
        onPressed: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                DetailHome()));
          });
        },
      ),
    );
  }
}
