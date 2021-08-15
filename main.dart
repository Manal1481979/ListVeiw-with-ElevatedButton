// 1 import package
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import './Item.dart';
import './ItemsView.dart';
//2 write main function
void main(){
  // writ run app to start flutter
 // MyApp  app=new ;
 // 3 to start flutter
  runApp(MyApp());
  
}
// 3 app configr
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      );
  }
}