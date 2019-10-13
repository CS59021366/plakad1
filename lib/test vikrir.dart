import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:what/main.dart';

import 'Home.dart';

void main() {
  runApp(new MaterialApp(
    title: "Camera App",
    home: vikrors(),
  ));
}

class vikrors extends StatefulWidget {
  static String routeName = '/vikror';


  @override
  _HomeViKror createState() => _HomeViKror();
}

class _HomeViKror extends State<vikrors> {

  String _value1 = null;
  List<String> _values1 = new List<String>();
  String _value2 = null;
  List<String> _values2 = new List<String>();
  String _value3 = null;
  List<String> _values3 = new List<String>();
  String _value4 = null;
  List<String> _values4 = new List<String>();
  String _value5 = null;
  List<String> _values5 = new List<String>();
  String _value6 = null;
  List<String> _values6 = new List<String>();
  String _value7 = null;
  List<String> _values7 = new List<String>();
  String _value8 = null;
  List<String> _values8 = new List<String>();
  String _value9 = null;
  List<String> _values9 = new List<String>();
  String _value10 = null;
  List<String> _values10 = new List<String>();


  @override
  void initState(){
    _values1.addAll(["0","1","2","3","4","5"]);
    _value1 = _values1.elementAt(0);
    _values2.addAll(["0","1","2","3","4","5"]);
    _value2 = _values2.elementAt(0);
    _values3.addAll(["0","1","2","3","4","5","6","7","8","9","10"]);
    _value3 = _values3.elementAt(0);
    _values4.addAll(["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]);
    _value4 = _values4.elementAt(0);
    _values5.addAll(["0","1","2","3","4","5","6","7","8","9","10"]);
    _value5 = _values5.elementAt(0);
    _values6.addAll(["0","1","2","3","4","5"]);
    _value6 = _values6.elementAt(0);
    _values7.addAll(["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"]);
    _value7 = _values7.elementAt(0 );
    _values8.addAll(["0","1","2","3","4","5"]);
    _value8 = _values8.elementAt(0);
    _values9.addAll(["0","1","2","3","4","5"]);
    _value9 = _values9.elementAt(0);
    _values10.addAll(["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"]);
    _value10 = _values10.elementAt(0);

    final FirebaseDatabase database = FirebaseDatabase.instance; //Rather then just writing FirebaseDatabase(), get the instance.
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('ทำการวิเคราะห์'),
        ),
        resizeToAvoidBottomPadding: false,
        body: ListView(
          children: <Widget>[
            StreamBuilder(
              stream: Firestore.instance.collection('quamroo').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return Text('Loadaing Data.... Please Wait...');
                return Column(
                  children: <Widget>[
                    Center(
                      child: (
                          Column(
                            children: <Widget>[
                              Image.network(snapshot.data.documents[0]['image01'],width: 200.0,height: 200.0,),

                            ],
                          )
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        new Text('**ให้คะแนนความสวยงามปลากัด**',style: TextStyle(fontSize: 20,color: Colors.red),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('หัวและตา  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values1.map<DropdownMenuItem<String>>((String value1){
                                return DropdownMenuItem<String>(
                                  value: value1,
                                  child: Text(value1,style: TextStyle(color: Colors.black87),),
                                );
                              }).toList(),
                              onChanged: (String newValueone){
                                setState(() {
                                  this._value1 = newValueone;
                                });
                              },
                              value: _value1,
                            ),
                          ],
                        ),

//                            new Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceAround,
//                              children: <Widget>[
//                                SizedBox(width: 30,height: 15, child: TextField(
//                                  style: TextStyle(fontSize: 20),
//                                ),),
//                                new Text('/7 คะแนน',style: TextStyle(fontSize: 20,),),
//                              ],
//                            ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('ลำตัวและเกร็ด  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values2.map<DropdownMenuItem<String>>((String value2){
                                return DropdownMenuItem<String>(
                                  value: value2,
                                  child: Text(value2,style: TextStyle(color: Colors.black87),),
                                );
                              }).toList(),
                              onChanged: (String newValuetwo){
                                setState(() {
                                  this._value2 = newValuetwo;
                                });
                              },
                              value: _value2,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: <Widget>[
                            Text('ครีบหลัง(กระโดง)  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values3.map<DropdownMenuItem<String>>((String value3){
                                return DropdownMenuItem<String>(
                                  value: value3,
                                  child: Text(value3,style: TextStyle(color: Colors.black87),),
                                );
                              }).toList(),
                              onChanged: (String newValuethree){
                                setState(() {
                                  this._value3 = newValuethree;
                                });
                              },
                              value: _value3,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('ครับหาง(หาง)  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values4.map<DropdownMenuItem<String>>((String value4){
                                return DropdownMenuItem<String>(
                                  value: value4,
                                  child: Text(value4,style: TextStyle(color: Colors.black87),),
                                );
                              }).toList(),
                              onChanged: (String newValuefour){
                                setState(() {
                                  this._value4 = newValuefour;
                                });
                              },
                              value: _value4,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: <Widget>[
                            Text('ครีบก้น(ชายน้ำ)  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values5.map<DropdownMenuItem<String>>((String value5){
                                return DropdownMenuItem<String>(
                                  value: value5,
                                  child: Text(' :  ${value5}',style: TextStyle(color: Colors.black87),),
                                );
                              }).toList(),
                              onChanged: (String newValuefive){
                                setState(() {
                                  this._value5 = newValuefive;
                                });
                              },
                              value: _value5,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('ครีบอื่น หู ท้อง เหงือก  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values6.map<DropdownMenuItem<String>>((String value6){
                                return DropdownMenuItem<String>(
                                  value: value6,
                                  child: Text(value6,style: TextStyle(color: Colors.black87),),
                                );
                              }).toList(),
                              onChanged: (String newValuesix){
                                setState(() {
                                  this._value6 = newValuesix;
                                });
                              },
                              value: _value6,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: <Widget>[
                            Text('สัและลวดลาย  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values7.map<DropdownMenuItem<String>>((String value7){
                                return DropdownMenuItem<String>(
                                  value: value7,
                                  child: Text(value7,style: TextStyle(color: Colors.black87),),
                                );
                              }).toList(),
                              onChanged: (String newValueseven){
                                setState(() {
                                  this._value7 = newValueseven;
                                });
                              },
                              value: _value7,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('การทรงตัว  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values8.map<DropdownMenuItem<String>>((String value8){
                                return DropdownMenuItem<String>(
                                  value: value8,
                                  child: Text(value8,style: TextStyle(color: Colors.black87),),
                                );
                              }).toList(),
                              onChanged: (String newValueeight){
                                setState(() {
                                  this._value8 = newValueeight;
                                });
                              },
                              value: _value8,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('การพองสู้  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values9.map<DropdownMenuItem<String>>((String value9){
                                return DropdownMenuItem<String>(
                                  value: value9,
                                  child: Text(value9,style: TextStyle(color: Colors.black87),),
                                );
                              }).toList(),
                              onChanged: (String newValuenine){
                                setState(() {
                                  this._value9 = newValuenine;
                                });
                              },
                              value: _value9,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('ภาพรวม  :  ',style: TextStyle(fontSize: 15.0),),
                            DropdownButton<String>(
                              items: _values10.map<DropdownMenuItem<String>>((String value10){
                                return DropdownMenuItem<String>(
                                  value: value10,
                                  child: Text(value10,style: TextStyle(color: Colors.black87),
                                  ),
                                );
                              },
                              ).toList(),
                              onChanged: (String newValueten){
                                setState(() {
                                  this._value10 = newValueten;
                                });
                              },
                              value: _value10,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.green,
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => HalSatu()
                                ));
                                FirebaseDatabase.instance.reference().
                                child("ผลจากผู้เชี่ยวชาญ").child(_getDateNow()).
                                set({
                                  'ตาและหัว': '$_value1',
                                  'ลำตัวและเกร็ด': '$_value2',
                                  'ครีบหลัง' : '$_value3',
                                  'ครีบหาง' : '$_value4',
                                  'ครับก้น' : '$_value5',
                                  'ครีบอื่นๆ' : '$_value6',
                                  'สีและลวดลาย' : '$_value7',
                                  'การทรงตัว' : '$_value8',
                                  'การพองสู้' : '$_value9',
                                  'ภาพรวม' : '$_value10',
                                  'created': _getDateNow(),
                                },);
                              },child: Text("ตกลง",style: TextStyle(color: Colors.black87, fontSize: 30.0),),),


                            RaisedButton(
                              color: Colors.red,
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => HalSatu()
                                ));
                              },child: Text("ยกเลิก",style: TextStyle(color: Colors.black87, fontSize: 30.0),),),
                          ],),

                      ],),
                  ],
                );
              },
            ),
          ],
        )
    );
  }
}
String _getDateNow() {
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd HH:mm:ss');
  return formatter.format(now);
}