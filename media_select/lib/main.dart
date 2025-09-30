
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_select/media_selected.dart';

void main() {
runApp(myApp());
}

class myApp extends StatefulWidget{
const myApp({super.key});

  @override
  State<myApp> createState() {
    return _myState();
  }


}

class _myState extends State<myApp>{



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home:MediaSelected(),
    );
  }
}