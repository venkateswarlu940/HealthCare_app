import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login.dart';

class Shared_res extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return res_shared();
  }
}
class res_shared extends State<Shared_res>{
  SharedPreferences logindata;
  String username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username');
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference Example"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50),
              child: Text(
                'WELCOME TO Venkatesh  $username',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            RaisedButton(
              onPressed: () {
                logindata.setBool('login', true);
                Navigator.pushReplacement(context,
                    new MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('return to login',style: TextStyle(color: Colors.white),),
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }

}