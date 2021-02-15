import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Payment Card Demo"),
      ),
      body: ListView(
        children: [
          Container(
           padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0,),
            child: Column(
             children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
                        filled: true,
                        labelText: "Card Name",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple, width: 3.0,),
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: Icon(
                      Icons.confirmation_number,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 50.0,),
                        labelText: "Number",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple, width: 3.0,),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.grey,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: Icon(
                      Icons.wysiwyg,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 50.0,),
                        labelText: "CVV",
                        fillColor: Colors.black12,
                        filled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple, width: 3.0,),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.grey,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 50.0,),
                        labelText: "Expiry Date",
                        fillColor: Colors.black12,
                        filled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple, width: 3.0,),
                        ),
                      ),
                      keyboardType: TextInputType.datetime,
                      cursorColor: Colors.grey,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 10.0,)
            ],
          ),
        ),
          InkWell(
            child: Container(

              margin: EdgeInsets.only(left: 100, right: 100.0, top: 30.0,),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Text('Pay'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
            onTap: (){
              print("Button Pay Di Klik !!!");
            },
          ),
        ]
      ),
    );
  }
}
