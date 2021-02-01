import 'package:flutter/material.dart';
class Second extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return lis1();
  }
}
// ignore: camel_case_types
class lis1 extends State<Second>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('your booked orders',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('successfully booked'),
          ),
        ),

    );
  }

}