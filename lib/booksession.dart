import 'package:demo_app/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Book_Session extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Session_State();
  }
}
// ignore: camel_case_types
class Session_State extends State<Book_Session>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          title: Text('Book Session',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          centerTitle:true,
        ),
        body:ListView(
          children: [
            Image.network("https://thumbs.gfycat.com/AcademicEagerJuliabutterfly-small.gif"),
            Container(
              padding: EdgeInsets.only(left: 130.0,top:10.0,right:130.0,bottom:10.0),
              child:RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Second()),
                );
              },
                padding: EdgeInsets.only(left: 10.0,top:10.0,right:10.0,bottom:10.0),
                color: Colors.blue,
                child: Text("book"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// class SecondRoute extends StatefulWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('second page'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text('Go back!'),
//           ),
//         ),
//
//       ),
//     );
//   }
// }

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }