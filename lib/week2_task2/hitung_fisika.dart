import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sizer/sizer_util.dart';

class HitungFisika extends StatefulWidget {
  @override
  _HitungFisikaState createState() => _HitungFisikaState();
}

class _HitungFisikaState extends State<HitungFisika> with SingleTickerProviderStateMixin{
  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();
  TextEditingController tinggi = TextEditingController();
  TabController _tabController;
  double keliling = 0;
  double luas = 0;
  bool _result = false;
  bool _result1 = false;

  @override
  void initState() {
    _tabController = TabController(
        length: 2,
        vsync: this
    );
    _tabController.addListener(() {
      if(_tabController.indexIsChanging){
        print(_tabController.index.toString());
        setState(() {
          _result = false;
          _result1 = false;
          keliling = 0;
          luas = 0;
          panjang.clear();
          lebar.clear();
          tinggi.clear();
        });
        print(_result && _result1);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hitung Fisika"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        TabBar(
        controller: _tabController,
        tabs: [
          Tab(
            child: Text(
              "Luas",
              style: TextStyle(
                  color: Colors.blue
              ),
            ),
          ),
          Tab(
            child: Text(
              "Volume",
              style: TextStyle(
                  color: Colors.blue
              ),
            ),
          ),
        ]
    ),

          Container(
            height: 400,
            child: TabBarView(
                physics: AlwaysScrollableScrollPhysics(),
                controller: _tabController,
                children:[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 15
                          ),
                          child: TextFormField(
                            controller: panjang,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "PANJANG",
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 15
                          ),
                          child: TextFormField(
                            controller: lebar,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "LEBAR",
                            ),
                          ),
                        ),
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
                                child: Text('Hitung',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () async {
                              setState(() {
                                if(panjang.text.length == 0 && lebar.text.length ==0){
                                  AlertDialog( title: Text("Perhatian !!!"), content: SingleChildScrollView(
                                      child: ListBody(
                                        children: [
                                          Text("Silahkan Masukkan Nilai Panjang dan Lebar !!!!")
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.of(context).pop();
                                      }, child: Text("OK"),)
                                    ],
                                  );
                                }
                                else if(panjang.text.length == 0){
                                  AlertDialog( title: Text("Perhatian !!!"), content: SingleChildScrollView(
                                    child: ListBody(
                                      children: [
                                        Text("Silahkan Masukkan Nilai Panjang !!!!")
                                      ],
                                    ),
                                  ),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.of(context).pop();
                                      }, child: Text("OK"),)
                                    ],
                                  );
                                }
                                else if(lebar.text.length == 0){
                                  AlertDialog( title: Text("Perhatian !!!"), content: SingleChildScrollView(
                                    child: ListBody(
                                      children: [
                                        Text("Silahkan Masukkan Nilai Lebar !!!!")
                                      ],
                                    ),
                                  ),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.of(context).pop();
                                      }, child: Text("OK"),)
                                    ],
                                  );
                                }
                                else{
                                  luas = double.parse(panjang.text)*double.parse(lebar.text);
                                  _result = true;
                                }
                              });
                            }
                        ),
                      ],
                    ) ,
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 15
                          ),
                          child: TextFormField(
                            controller: panjang,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "PANJANG",
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 15
                          ),
                          child: TextFormField(
                            controller: lebar,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "LEBAR",
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 15
                          ),
                          child: TextFormField(
                            controller: tinggi,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "TINGGI",
                            ),
                          ),
                        ),
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
                                child: Text('Hitung',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () async {
                              setState(() {
                                keliling = double.parse(panjang.text)*double.parse(lebar.text)*double.parse(tinggi.text);
                                _result1 = true;
                              });
                            }
                        ),
                      ],
                    ) ,
                  ),
                ]
            ),
          ),
          _result1 ? Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Keliling = "+keliling.toString()+"(m3)",
                style: TextStyle(fontSize: 20),
              )
          ) : Container(),
          _result ? Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Luas = "+luas.toString()+ "(m2)",
                style: TextStyle(fontSize: 20),
              )
          ) : Container(),
        ],
      ),
    );
  }
}
