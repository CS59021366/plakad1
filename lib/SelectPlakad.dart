import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:what/vikror.dart';

void main(){
  runApp(new MaterialApp(
    title: "กิจกรรมที่จัดแข่ง",
    home: Select(),
  ));
}

class Select extends StatefulWidget {
  @override
  _HomeSelect createState() => _HomeSelect();
}

class _HomeSelect extends State<Select> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ให้คะแนนปลากัด'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Colors.grey,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => vikror()
                      )); //MaterialPageRoute
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 250,
                          height: 250,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image.asset(
                              'assets/Select.png',
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,

                            ),
                          ),),
                      ],),
                  ),
                ),
              ),
            ),
          ),
///////////////////////////////
        ],
      ),
    );
  }
}

