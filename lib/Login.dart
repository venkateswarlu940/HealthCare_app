import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Myprofile.dart';
import 'Register.dart';
class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login_page();
  }
}
class Login_page extends State<Login>{
  final email = TextEditingController();
  final pass = TextEditingController();
  SharedPreferences LoginData;
  bool newuser;
  @override
  void initState(){
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login() async {
    LoginData=await SharedPreferences.getInstance();
    newuser=(LoginData.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Myprofile_screen()));
    }
  }
  @override
  void dispose(){
    email.dispose();
    pass.dispose();
    super.dispose();
  }
  void Login1(){
    setState(() {
      var myEmail = email.text;
      var myPass = pass.text;
      if (myEmail == "" && myPass == "") {
        return showDialog(
          context: context,
          builder: (ctx) =>
              AlertDialog(
                title: Row(
                  children: [
                    Text(
                      "Enter your email id and pasword",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text("ok"),
                    color: Colors.blue,
                  ),
                ],
              ),
        );
      }
      else if(myEmail == "venky@gmail.com" && myPass == "1234") {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text("Message"),
            content: Text("You Have Successfully Logged in"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  String username = email.text;
                  String password = pass.text;
                  if(username != '' && password != '')
                    print('successfull');
                  LoginData.setBool('login', false);
                  LoginData.setString('username', username);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myprofile_screen()));
                },
                child: Text("OK"),
              ),
            ],
          ),
        );
      }
      else {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text("Message"),
            content: Text("your id and password incorrect please register"),
            actions: <Widget>[
              Row(
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Text("cancel"),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register(),),
                      );
                    },
                    child: Text("OK"),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    });
  }


  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      title: Text("Login Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
       body:Container(
         width: MediaQuery.of(context).size.width * 06,
         height: MediaQuery.of(context).size.height * 06,
         color: Colors.transparent,
         child: CustomPaint(
           painter: CurvePainter(),

       child:ListView(
        children: [
          Column(
            children: [
              // Text("Login"),
              Column(
                children: [
                  // final emailField =
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left:140.0,top:20.0,right: 20.0,bottom: 40.0),
                        child: Text("LoginPage",style:TextStyle(fontSize: 20.0)),
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
                          labelText: 'Email',
                          hintText: " Enter your Email",
                          // border:
                          //    OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
                          //    ),
                        ),
                        controller: email,
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
                        controller: pass,
                      ),
                      trailing: Icon(Icons.remove_red_eye),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left:260.0,top:0.0,right: 0.0,bottom: 40.0),
                        child: Text("Forget Password?"),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width *0.30,
                    child: RaisedButton(
                      child: Text("LOGIN",style: TextStyle(color: Colors.white),),
                      onPressed: Login1,
                      color:Colors.blue,
                    ),
                  ),
                  // return showDialog(
                  //   context: context,
                  //   builder: (ctx) => AlertDialog(
                  //     title: Text("Alert"),
                  //     content: Text("You have successfully login"),
                  //     actions: <Widget>[
                  //       FlatButton(
                  //         onPressed: () {
                  //           Navigator.push(
                  //             context,
                  //             MaterialPageRoute(builder: (context) => Myprofile_screen()),
                  //           );
                  //         },
                  //         child: Text("succes"),
                  //       ),
                  //     ],
                  //   ),
                  // );

                  //padding: EdgeInsets.only(left: 10.0,top:10.0,right:10.0,bottom:10.0),
                  // color: Colors.blue,
                  // child: Text("Login"),
                  //    ),
                  // child: RaisedButton(
                  //    onPressed: () {
                  //      Navigator.push(
                  //        context,
                  //        MaterialPageRoute(builder: (context) => Myprofile_screen()),
                  //      );
                  //    },
                  //   // padding: EdgeInsets.only(left: 10.0,top:10.0,right:10.0,bottom:10.0),
                  //   // color: Colors.blue,
                  //   // child: Text("Login",),
                  //   child: Text("Login"),
                  //      ),
                  //  ),
                  //  ListTile(
                  //    title: Text(),
                  //  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10.0,top:320.0,right:180.0,bottom:40.0),
                          child: Text("Terms & Conditions"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),

         ],
       ),
        ),
       ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Register()),
          );
        },
        child: Icon(Icons.add),
      ),
    ),
    );
  }
}
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas,Size size){
    var paint=Paint();
    paint.color=Colors.blue[500];
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=2.0;

    var path=Path();
    path.moveTo(0,500);
    path.lineTo(0, 800);
    path.lineTo(550, 730);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}