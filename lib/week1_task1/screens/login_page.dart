import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentoring_batch4/week1_task1/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginPage> {

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  TextEditingController _fullName    = TextEditingController();
  TextEditingController _validEmail = TextEditingController();
  TextEditingController _password  = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        child: Form(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(height: 50,),
              Text("Blogging", style: TextStyle(fontSize: 50.0, color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.transparent,
                ),
                child: TextFormField(
                  controller: _fullName,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person,
                      color: Colors.white,
                    ),
                    hintText: 'Full Name',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.white),
                   borderRadius: BorderRadius.circular(5.0),
                  color: Colors.transparent,
                ),
                child: TextFormField(
                  controller: _validEmail,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.alternate_email_outlined,
                      color: Colors.white,
                    ),
                    hintText: 'Valid Email',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.transparent,
                ),
                child: TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.lock_outlined,
                      color: Colors.white,
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.transparent,
                ),
                child: TextFormField(
                  controller: _confirmPassword,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.lock_outline,
                      color: Colors.white,
                    ),
                    hintText: 'Confirm Password',
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                child: Container(
                  margin: EdgeInsets.all(16),
                  width: 10.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                     color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(50)
                      )
                  ),
                  child: Center(
                    child: Text('Sign Up'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage())
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account ? "),
                  FlatButton(onPressed: () {

                  },
                    child: Text("Sign In"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
