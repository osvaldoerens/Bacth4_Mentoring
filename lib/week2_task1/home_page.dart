import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentoring_batch4/task_page.dart';

class HalamanUtama extends StatefulWidget {
  final String username;
  final String password;

  const HalamanUtama({Key key, this.username, this.password}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
            Icons.home
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                        "PERHATIAN !!"
                    ),
                    content: Text(
                        "Apakah Anda Yakin Ingin Keluar ?"
                    ),
                    actions: [
                      FlatButton(
                        child: Text(
                            "No"
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      FlatButton(
                          child: Text(
                              "Yes"
                          ),
                          onPressed: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => TaskPage()))
                      )
                    ],
                  );
                },
              );
            },)
        ],
        title: Text(
            "HOME PAGE"
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Username Anda : " + widget.username
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "Password Anda : " + widget.password
            )
          ],
        ),
      ),
    );
  }
}
