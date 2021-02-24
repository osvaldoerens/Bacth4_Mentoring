import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentoring_batch4/week1_task1/sign_up.dart';
import 'package:mentoring_batch4/week1_task2/payment_page.dart';
import 'package:mentoring_batch4/week2_task1/login_page.dart';
import 'package:mentoring_batch4/week2_task2/hitung_fisika.dart';
import 'package:mentoring_batch4/week2_task3/konversi_nilai.dart';
import 'package:sizer/sizer.dart';
import 'package:sizer/sizer_util.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 5, right: 5,),
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 100, top: 50.0,),
           child: ListView(
            children: [
              Text("Mentoring UdaCoding Batch 4", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              Container(
               child: Image.asset('assets/udacoding.png'),
              ),
              SizedBox(height: 10.0,),
              InkWell(
                child: Container(
                    height: SizerUtil.deviceType == DeviceType.Tablet ? 70 : 45,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff6bceff),
                            Color(0xFF00abff),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        )
                    ),
                    child: Center(
                      child: Text('Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                  }
              ),
              SizedBox(height: 10,),
              InkWell(
                  child: Container(
                    height: SizerUtil.deviceType == DeviceType.Tablet ? 70 : 45,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff6bceff),
                            Color(0xFF00abff),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        )
                    ),
                    child: Center(
                      child: Text('Payment',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
                  }
              ),
              SizedBox(height: 10,),
              InkWell(
                  child: Container(
                    height: SizerUtil.deviceType == DeviceType.Tablet ? 70 : 45,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff6bceff),
                            Color(0xFF00abff),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        )
                    ),
                    child: Center(
                      child: Text('Login Page',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  }
              ),
              SizedBox(height: 10,),
              InkWell(
                  child: Container(
                    height: SizerUtil.deviceType == DeviceType.Tablet ? 70 : 45,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff6bceff),
                            Color(0xFF00abff),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        )
                    ),
                    child: Center(
                      child: Text('Hitung Fisika',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HitungFisika()));
                  }
              ),
              SizedBox(height: 10,),
              InkWell(
                  child: Container(
                    height: SizerUtil.deviceType == DeviceType.Tablet ? 70 : 45,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff6bceff),
                            Color(0xFF00abff),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        )
                    ),
                    child: Center(
                      child: Text('Konversi Nilai',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => KonversiNilai()));
                  }
              ),
            ],
          ),
        ),
    );
  }
}


