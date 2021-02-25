import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sizer/sizer_util.dart';

class KonversiNilai extends StatefulWidget {
  @override
  _KonversiNilaiState createState() => _KonversiNilaiState();
}

class _KonversiNilaiState extends State<KonversiNilai> {
  String _ukuran;
  String _hitung;
  double _nilai;
  String _resultMessage;

  final TextStyle inputStyle = TextStyle(
    fontSize: 18,
    color: Colors.black,
  );
  final TextStyle labelStyle = TextStyle(
    fontSize: 20,
    color: Colors.black,
  );

  void initState() {
    _nilai = 0;
    super.initState();
  }

  final List<String> _satuanUkuran = [
    'meters',
    'kilometers',
    'grams',
    'kilograms',
    'feet',
    'miles',
    'pounds (lbs)',
    'ounces',
  ];


  final Map<String, int> _satuanUkuranMap = {
    'meters': 0,
    'kilometers': 1,
    'grams': 2,
    'kilograms': 3,
    'feet': 4,
    'miles': 5,
    'pounds (lbs)': 6,
    'ounces': 7,
  };

  dynamic _formulas = {
    '0': [1, 0.001, 0, 0, 3.28084, 0.000621371, 0, 0],
    '1': [1000, 1, 0, 0, 3280.84, 0.621371, 0, 0],
    '2': [0, 0, 1, 0.0001, 0, 0, 0.00220462, 0.035274],
    '3': [0, 0, 1000, 1, 0, 0, 2.20462, 35.274],
    '4': [0.3048, 0.0003048, 0, 0, 1, 0.000189394, 0, 0],
    '5': [1609.34, 1.60934, 0, 0, 5280, 1, 0, 0],
    '6': [0, 0, 453.592, 0.453592, 0, 0, 1, 16],
    '7': [0, 0, 28.3495, 0.0283495, 3.28084, 0, 0.0625, 1],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text('Measures Converter'),
          ),
          body: Container(
            margin: EdgeInsets.all(16.0,),
            padding: EdgeInsets.all(16.0,),
            child: Column(
              children: [
                TextFormField(
                  style: inputStyle,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    fillColor: Colors.blue,
                    hintText: "Masukkan Angka ",
                  ),
                  onChanged: (text) {
                    var rv = double.tryParse(text);
                    if (rv != null) {
                      setState(() {
                        _nilai = rv;
                      });
                    }
                  },
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    DropdownButton(
                      style: inputStyle,
                      hint: Text(
                        "Satuan",
                        style: inputStyle,
                      ),
                      items: _satuanUkuran.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _ukuran = value;
                        });
                      },
                      value: _ukuran,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blue[600],
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Spacer(),
                    DropdownButton(
                      hint: Text(
                        "Satuan",
                        style: inputStyle,
                      ),
                      style: inputStyle,
                      items: _satuanUkuran.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: inputStyle,
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _hitung = value;
                        });
                      },
                      value: _hitung,
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),
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
                        child: Text('Hitung'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    onTap: () async {
                      if (_ukuran.isEmpty || _hitung.isEmpty || _nilai == 0) {
                        return;
                      } else {
                        convert(_nilai, _ukuran, _hitung);
                      }
                    }
                ),
                SizedBox(height: 30.0,),
                Text((_resultMessage == null) ? '' : _resultMessage,
                    style: labelStyle
                ),
              ],
            ),
          ),
      );
  }

  void convert(double value, String from, String to) {
    int nFrom = _satuanUkuranMap[from];
    int nTo = _satuanUkuranMap[to];
    var multiplier = _formulas[nFrom.toString()][nTo];
    var result = value * multiplier;
    if (result == 0) {
      _resultMessage = 'This conversion cannot be performed';
    } else {
      _resultMessage =
      '${_nilai.toString()} $_ukuran = ${result.toString()} $_hitung';
    }
    setState(() {
      _resultMessage = _resultMessage;
    });
  }
}
