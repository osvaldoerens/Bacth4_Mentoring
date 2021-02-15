import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentoring_batch4/week1_task1/screens/home_page.dart';
import 'package:mentoring_batch4/week1_task1/response_detail_page.dart';

class DetailHome extends StatefulWidget {

  @override
  _DetailHomeState createState() => _DetailHomeState();
}

class _DetailHomeState extends State<DetailHome> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create a post", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.orange,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        key: _formKey,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 5.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.transparent,
            ),
            child: TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 5.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.transparent,
            ),
            child: TextFormField(
              controller: descriptionController,
              maxLengthEnforced: true,
              maxLines: 20,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Center(
                    child: Text(
                      "PUBLISH",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )),
              ),
            onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage(titleHomePage: titleController.text, descriptionHomePage: descriptionController.text,)
                ));
            },
          ),
        ],
      ),
    );
  }
}
