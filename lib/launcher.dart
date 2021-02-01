import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Launcher extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Launcher_page();
  }
}
class Launcher_page extends State<Launcher>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child:Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black,width: 2.0),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Column(
                    children: [
                      FlatButton.icon(icon: Icon(Icons.add_to_home_screen),
                      label: Text("Open website",style: TextStyle(fontSize: 20.0),
                      ),
                        onPressed:() => launch("http://flutter.dev"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black,width: 2.0),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Column(
                    children: [
                      FlatButton.icon(icon: Icon(Icons.call),
                        label: Text("Open website",style: TextStyle(fontSize: 20.0),
                        ),
                        onPressed:() => launch("tel:+1 555 010 999"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}