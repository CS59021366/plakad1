import 'package:flutter/material.dart';
import 'package:what/ExamFS0.dart';
import 'package:what/Plawad.dart';
import 'package:what/ProFile.dart';
import 'package:what/quiry.dart';

import 'SelectPlakad.dart';

void main(){
  runApp(new MaterialApp(
      title : "Analysis Fish Fighting",
      home : new HalSatu(),
      theme: new ThemeData(
          primarySwatch: Colors.blueGrey//สีหัวข้อผ
      )
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black87, //สัพื้นหลังของแอป
      appBar: new AppBar(
        title: new Center(child: new Text('Menu',textAlign: TextAlign.center,style: TextStyle(fontSize: 50),)),
        leading: IconButton(icon: Icon(Icons.notifications), onPressed: (){
          //
        }),
        actions: <Widget>[
          IconButton(icon: Icon(
              Icons.supervised_user_circle),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => ProFile()
            ));
            //
          }),
        ],
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Function1(teks: "ให้คะแนนปลากัด"),
                Function2(teks: "ประวัติการให้คะแนน"),
              ],),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Function3(teks: "รายงานปัญหา"),
              ],),
          ],
        ),
      ),
    );
  }
}

class Function1 extends StatelessWidget{ //class สร้างfunction

  Function1 ({this.teks});

  final String teks;

  @override
  Widget build(BuildContext context){
    return new Container(
      decoration: new BoxDecoration(
          color: Colors.black87,borderRadius: new BorderRadius.circular(0.0)
      ),
      alignment: Alignment.center,
      padding: new EdgeInsets.only(left: 5.0, right: 5.0, top: 30.0, bottom: 30.0),//ระยะห่างของแต่ละบรรทัด
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => Select()
          )); //MaterialPageRoute
        },
        child: new Column(
          children: <Widget>[
            new Image.asset('assets/Select.png',width: 150.0,height: 150.0,fit: BoxFit.contain,),
            new Text(teks, style: new TextStyle(fontSize: 25.0,color: Colors.white70),),
            new Padding(padding: new EdgeInsets.all(0.0),),

          ],
        ),
      ),
    );
  }
}
class Function2 extends StatelessWidget{ //class สร้างfunction

  Function2 ({this.teks});

  final String teks;

  @override
  Widget build(BuildContext context){
    return new Container(
      decoration: new BoxDecoration(
          color: Colors.black87,borderRadius: new BorderRadius.circular(0.0)),
      alignment: Alignment.center,
      padding: new EdgeInsets.only(left: 5.0, right: 5.0, top: 30.0, bottom: 30.0),//ระยะห่างของแต่ละบรรทัด
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => Plawad()
          )); //MaterialPageRoute
        },
        child: new Column(
          children: <Widget>[
            new Image.asset('assets/History.png',width: 150.0,height: 150.0,fit: BoxFit.contain,),
            new Text(teks, style: new TextStyle(fontSize: 25.0,color: Colors.white70),),
            new Padding(padding: new EdgeInsets.all(0.0),),
          ],
        ),
      ),
    );
  }
}

class Function3 extends StatelessWidget{ //class สร้างfunction

  Function3 ({this.teks});

  final String teks;

  @override
  Widget build(BuildContext context){
    return new Container(
      decoration: new BoxDecoration(
          color: Colors.black87,borderRadius: new BorderRadius.circular(0.0)
      ),
      alignment: Alignment.center,
      padding: new EdgeInsets.only(left: 5.0, right: 5.0, top: 30.0, bottom: 30.0),//ระยะห่างของแต่ละบรรทัด
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => Examfs()
          )); //MaterialPageRoute
        },
        child: new Column(
          children: <Widget>[
            new Image.asset('assets/Report.png',width: 150.0,height: 150.0,fit: BoxFit.contain,),
            new Text(teks, style: new TextStyle(fontSize: 25.0,color: Colors.white70),),
            new Padding(padding: new EdgeInsets.all(0.0),),
          ],
        ),
      ),
    );
  }
}