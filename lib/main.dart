import 'dart:math';

import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(title: Text("Dicee"),
          backgroundColor: Colors.pinkAccent,
        ),
        body:A(),
      ),
    )
  );
}
class A extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DicePage();
  }

}
class DicePage extends State<A>{

  var LeftButtonNumber=1;
  var RightButtonNumber=1;

  Widget build(BuildContext context) {
    // TODO: implement build


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton
              (child: Image.asset("images/dice$LeftButtonNumber.png"),
              onPressed: () {
              setState(() {
                LeftButtonNumber=Random().nextInt(6)+1;
              });


              },
            ),
          ),
          Expanded(
            child:
            FlatButton(
              child: Image.asset("images/dice$RightButtonNumber.png"),
              onPressed: () {
               setState(() {
                RightButtonNumber=Random().nextInt(6)+1;
               });
              },
            ),
          ),
        ],
      ),
    );
  }
  
}