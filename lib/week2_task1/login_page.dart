import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController sUsername = TextEditingController();
  TextEditingController sPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "FORM LOGIN"
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.only(
            top: 50,
            left: 30,
            right: 30
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "SILAHKAN MASUK!!!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: sUsername,
                validator: (value) {
                  if(value.isEmpty){
                    return "Mohon isi username!!!";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    prefixIcon: Icon(Icons.people_alt_sharp),
                    labelText: "USERNAME"
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: sPassword,
                obscureText: true,
                validator: (value) {
                  if(value.length < 6){
                    return "Password tidak boleh kurang dari 6 digit !!!";
                  } else if(value.isEmpty){
                    return "Mohon isi password!!!";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  prefixIcon: Icon(Icons.lock_sharp),
                  labelText: "PASSWORD",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text(
                    "MASUK"
                ),
                onPressed: () {
                  if(_formKey.currentState.validate()){
                    if(sUsername.text == "udacodingid" && sPassword.text == "udacodingJaya2021"){
                      print("ANDA BERHASIL MASUK");
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => HalamanUtama(
                                  username: sUsername.text,
                                  password: sPassword.text
                              )
                          )
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                                "PERHATIAN !!"
                            ),
                            content: Text(
                                "Silahkan Isi Username dan Password yang benar !!"
                            ),
                            actions: [
                              FlatButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                      "OK"
                                  )
                              )
                            ],
                          );
                        },
                      );
                    }
                  }
                },)
            ],
          ),
        ),
      ),
    );
  }
}
