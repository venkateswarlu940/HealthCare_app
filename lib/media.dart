import 'package:flutter/material.dart';
class Meadia_page extends StatefulWidget{
@override
State<StatefulWidget> createState() {
  // TODO: implement createState
  return About_us1();
}
}
class About_us1 extends State<Meadia_page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.30,
                color: Colors.blue,
                child: Center(child:  Text("I cover 30% of the screen height and 100% of screen width!",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: RaisedButton(
                    child: Text("I'm a responsive button!",
                        style: Theme.of(context).textTheme.headline5,
                        textAlign: TextAlign.center)),
              ),
            ]));
  }
}