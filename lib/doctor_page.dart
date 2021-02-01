import 'package:demo_app/sample_page.dart';
import 'package:flutter/material.dart';
class doctor_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return doctor_page1();
  }
}
class doctor_page1 extends State<doctor_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child:Scaffold(
       appBar: AppBar(
        title: Text("Choose Doctor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         centerTitle: true,
      ),
      body:ListView(
        children: [
          Container(
            child: Column(
              children: [

                ListTile(
                  title: Text("Choose The Doctor You Want",
                    style: TextStyle(fontSize:35,fontWeight:FontWeight.bold,color: Colors.deepPurpleAccent),
                  ),
                  contentPadding:const EdgeInsets.only(left:20.0,top:50.0,right: 10.0,bottom: 10.0),
                  subtitle: Text("Lorem ipsum dolor amet,consectetur  adipiscing inet deli",
                    style: TextStyle(fontSize:20,color: Colors.indigo[300]),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>desire_page1()),
                      );
                    },
                    padding: EdgeInsets.only(left:10,top:10.0,right:10.0,bottom:10.0),

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.black38)
                    ),
                    color: Colors.deepOrange[300],
                    child:Text('Get Started ',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  padding: EdgeInsets.only(left:10.0,right:250.0),
                ),
                // Column(
                //    children: <Widget>[
                //    Align(
                //         alignment: Alignment.bottomLeft,
                //           child: Image.asset(
                //                 'assets/images/doctor_page1.jpg',
                //                width: MediaQuery.of(context).size.width,
                //                fit: BoxFit.fitWidth,
                //    ),
                //  ),
                Container(
                  alignment: Alignment.bottomCenter,
                  //alignment: Alignment.bottomLeft,
                  child: Image.asset("assets/images/Capture_task.JPG",
                    //width: MediaQuery.of(context).size.width,
                    // fit: BoxFit.fitWidth,
                    //height: 350,
                    //width: 350,
                  ),
                  //padding:EdgeInsets.only(top: 10.0,bottom: 10.0),
                ),
              ],
            ),
           // padding: EdgeInsets.only(top: 10.0 ,bottom:10.0),
          ),//alignment: Alignment.bottomCenter,
        ],
      ),
    //     Container(
    //       child: Column(
    //       children: [
    //         ListTile(
    //           title: Text("Choose The Doctor You Want",
    //             style: TextStyle(fontSize:35,fontWeight:FontWeight.bold,color: Colors.deepPurpleAccent),
    //           ),
    //           contentPadding:const EdgeInsets.only(left:20.0,top:50.0,right: 10.0,bottom: 10.0),
    //           subtitle: Text("Lorem ipsum dolor amet,consectetur  adipiscing inet deli",
    //             style: TextStyle(fontSize:20,color: Colors.indigo[300]),
    //           ),
    //         ),
    //        Container(
    //          child: RaisedButton(
    //            onPressed: (){
    //              Navigator.push(
    //                context,
    //                MaterialPageRoute(builder:(context)=>desire_page1()),
    //              );
    //            },
    //            padding: EdgeInsets.only(left:10,top:10.0,right:10.0,bottom:10.0),
    //
    //            shape: RoundedRectangleBorder(
    //                borderRadius: BorderRadius.circular(25.0),
    //                side: BorderSide(color: Colors.black38)
    //            ),
    //            color: Colors.deepOrange[300],
    //            child:Text('Get Started ',
    //                style: TextStyle(fontSize: 15),
    //          ),
    //          ),
    //           padding: EdgeInsets.only(left:10.0,right:250.0),
    //        ),
    //      // Column(
    //      //    children: <Widget>[
    //      //    Align(
    //      //         alignment: Alignment.bottomLeft,
    //      //           child: Image.asset(
    //      //                 'assets/images/doctor_page1.jpg',
    //      //                width: MediaQuery.of(context).size.width,
    //      //                fit: BoxFit.fitWidth,
    //      //    ),
    //      //  ),
    //         Container(
    //           alignment: Alignment.bottomCenter,
    //           //alignment: Alignment.bottomLeft,
    //           child: Image.asset("assets/images/Capture_task.JPG",
    //            //width: MediaQuery.of(context).size.width,
    //            // fit: BoxFit.fitWidth,
    //             //height: 350,
    //             //width: 350,
    //           ),
    //           //padding:EdgeInsets.only(top: 10.0,bottom: 10.0),
    //         ),
    //   ],
    //   ),
    //     padding: EdgeInsets.only(top: 10.0 ,bottom:10.0),
    // ),//alignment: Alignment.bottomCenter,
    ),
    );
  }
}
//https://upload.wikimedia.org/wikipedia/commons/6/67/Medical_doctor.png