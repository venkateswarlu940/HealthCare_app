import 'package:flutter/material.dart';

import 'Login.dart';
class Register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Register_page();
  }
}
class Register_page extends State<Register>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.transparent,
      appBar: AppBar(
      title: Text("RegistrationPage",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        child: Column(
          children: [
            // Text("Login"),
            Column(
              children: [
                // final emailField =
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left:120.0,top:20.0,right: 20.0,bottom: 40.0),
                      child: Text("RegistrationPage",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    ),
                  ],
                ),
                Container(
                  child:ListTile(
                    title: TextField(
                      obscureText: false,
                      // style: style,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                          labelText: 'First Name',
                          hintText: " Enter your First Name",
                          // border:
                          // OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
                          // ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child:ListTile(
                    title: TextField(
                      obscureText: false,
                      // style: style,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                          labelText: 'Last Name',
                          hintText: " Enter your Last Name",
                          // border:
                          // OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
                          // ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child:ListTile(
                    title: TextField(
                      obscureText: false,
                      // style: style,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                        labelText: 'Email',
                        hintText: " Enter your Email",
                        // border:
                        // OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
                        // ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child:ListTile(
                    title:    TextField(
                      obscureText: true,
                      // style: style,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                          labelText: 'Password',
                          hintText: "Enter your password",
                          // border:
                          // OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
                          // ),
                      ),
                    ),
                    trailing: Icon(Icons.remove_red_eye),
                  ),
                ),
                Container(
                 child:RaisedButton(
                  onPressed: () {
                    return showDialog(
                      context: context,
                      builder: (ctx)=>AlertDialog(
                        title: Text("Alert"),
                        content: Text("your successfully registered"),
                        actions: [
                          FlatButton(
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>Login()),
                              );
                            },
                            child: Text("go back to the login"),
                          ),
                        ],
                      ),
                    );
                  },
                   padding: EdgeInsets.only(left:10,top:10.0,right:10.0,bottom:10.0),
                   color: Colors.blue,
                  child: const Text('Create Account', style: TextStyle(fontSize: 15)),
                ),
                ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => Login()),
      //     );
      //   },
      //   tooltip: 'Decrement',
      //   child: Icon(Icons.remove),
       ),
    );
  }
}