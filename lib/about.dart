import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return About_us();
  }
}
class About_us extends State<About>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child:Scaffold(
        //backgroundColor: Colors.grey,
      appBar: AppBar(
      title: Text("Contact Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      centerTitle: true,
      ),
      body:ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: 270,
                  //child: Image.asset("assets/images/doctor_page2.JPG",
                  child:Image.network("https://i.pinimg.com/originals/7c/07/54/7c075451aa96f9c01ee1b9118203df1d.jpg",
                    //
                    // ),
                    height: 400,
                  ),
                ),
                Container(
                  // height: 600.0,
                  //alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 0.0, top:85.0,right: 0.0,bottom: 10.0),
                  child:Column(
                    children: [
                      FractionalTranslation(
                        translation: Offset(0.0, -0.2),
                        child: Container(
                          //padding: EdgeInsets.only(left: 0.0, top:0.0,right: 0.0,bottom: 0.0),
                          child:Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30), // if you need this
                                  side: BorderSide(
                                    color: Colors.grey.withOpacity(0.2),
                                    width: 1,
                                  ),
                                ),
                                elevation: 3,
                                color: Colors.white,
                                clipBehavior: Clip.antiAlias,
                                child: Column(
                                  children: [
                                    // FractionalTranslation(
                                    // translation: Offset(0.1, -0.2),
                                    Align(
                                      child:Container(
                                        child: ListTile(
                                          leading: Container(
                                             child: Image.network('https://thumbs.dreamstime.com/b/print-178435435.jpg',
                                              //width: 110.0,
                                              //height: 150.0,
                                            ),
                                            height: 70,
                                            width: 70,
                                            margin: const EdgeInsets.only(left: 10.0,top: 0.0,right: 10.0,bottom: 0.0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              //color: Colors.blueAccent[200],
                                            ),
                                            //padding:EdgeInsets.only(left: 10.0,top: 50.0,right: 10.0,bottom: 50.0) ,
                                          ),
                                          title:Column(
                                            children: <Widget>[
                                              Row(
                                                children:[
                                                  Text("Dr.Stella Kane",style: TextStyle(fontSize: 17.0,fontWeight:FontWeight.bold,color: Colors.indigo),),
                                                ],

                                              ),
                                              Row(
                                                children:[
                                                  Text("Heart Surgeon-Flower Hospitals",style: TextStyle(fontSize: 14.0,color: Colors.indigo[300]),),
                                                ],

                                              ),
                                            ],
                                          ),
                                         subtitle: Container(
                                           child: Row(
                                             children: <Widget>[
                                               Container(
                                                 child:Icon(Icons.call,color: Colors.blue,size: 18,),
                                                 height: 30,
                                                 width: 30,
                                                 margin: const EdgeInsets.all(12),
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(10),
                                                   color: Colors.blue[100],
                                                 ),
                                               ),
                                               Container(
                                                 child:Icon(Icons.message,color: Colors.orange,size: 18,),
                                                 height: 30,
                                                 width: 30,
                                                 margin: const EdgeInsets.all(12),
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(10),
                                                   color: Colors.yellow[100],
                                                 ),
                                               ),
                                               Container(
                                                 child:Icon(Icons.videocam,color: Colors.deepOrangeAccent,size: 18,),
                                                 height: 30,
                                                 width: 30,
                                                 margin: const EdgeInsets.all(12),
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(10),
                                                   color: Colors.deepOrangeAccent[100],
                                                 ),
                                                 padding: EdgeInsets.only(left: 0.0,top: 0.0,right: 0.0,bottom: 0.0),
                                               ),
                                             ],
                                           ),
                                         ),
                                        ),
                                      ),
                                    ),
                                    // ),
                                    Container(
                                      child: ListTile(
                                        title: Text("About Doctor\n",
                                          style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.indigo),
                                        ),
                                        subtitle: Text("Dr.Stella is the top most heart surgeon in flower\nHospital.She has done over100 successful surgeries\nwithin past 3 years.She has achieved several\nawards for her wonderful contribution in her own\n field.She's available for private consultation for\ngiven schedules.",
                                          style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.indigo[300]),
                                        ),
                                      ),
                                      padding: EdgeInsets.only(left: 10.0,top: 10.0,right: 10.0,bottom: 10.0),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text("Upcoming Schedules",style: TextStyle(
                                              color: Colors.indigo,fontSize: 15, fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                      padding: const EdgeInsets.only(left: 23.0,top: 10.0,right: 10.0,bottom: 10.0),
                                    ),
                                    Container(
                                      child: ListView(
                                        children: <Widget> [
                                          Container(
                                            height: 75,
                                            child: ListTile(
                                              leading: Container(
                                                child:Column(
                                                  children: [
                                                    Row(
                                                    children:[
                                                      Container( 
                                                            child: Text("12",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
                                                        padding: const EdgeInsets.only(left: 10,top: 10.0),
                                                       ),
                                                   ],      
                                                ),
                                                    Row(
                                                      children:[
                                                        Container(
                                                          child: Text("Jan",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
                                                          padding: const EdgeInsets.only(left: 10),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                  // child:Text("12\nJan",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
                                                ),
                                                height: 50,
                                                width: 50,
                                                margin: const EdgeInsets.all(3),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.blueAccent[100],
                                                ),
                                              ),
                                              title: Text("Consultation",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                                              subtitle: Text("Sunday . 9am-11am",style: TextStyle(color: Colors.indigo),),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.indigo[100],
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            padding: const EdgeInsets.all(6),
                                            margin: const EdgeInsets.only(bottom: 5),
                                          ),
                                          Container(
                                            height: 75,
                                            child: ListTile(
                                              leading: Container(
                                                child:Column(
                                                  children: [
                                                    Row(
                                                      children:[
                                                        Container(
                                                          child: Text("13",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
                                                          padding: const EdgeInsets.only(left: 10,top: 10.0),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children:[
                                                        Container(
                                                          child: Text("Jan",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
                                                          padding: const EdgeInsets.only(left: 10),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                  // child:Text("12\nJan",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
                                                ),
                                                height: 50,
                                                width: 50,
                                                margin: const EdgeInsets.all(3),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.orangeAccent[100],
                                                ),
                                              ),
                                              title: Text("Consultation",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                                              subtitle: Text("Monday . 9am-11am",style: TextStyle(color: Colors.indigo),),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.orange[100],
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            padding: const EdgeInsets.all(3),
                                            margin: const EdgeInsets.only(bottom: 5),
                                          ),
                                          Container(
                                            height: 75,
                                            child: ListTile(
                                              leading: Container(
                                                child:Column(
                                                  children: [
                                                    Row(
                                                      children:[
                                                        Container(
                                                          child: Text("14",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
                                                          padding: const EdgeInsets.only(left: 10,top: 10.0),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children:[
                                                        Container(
                                                          child: Text("Jan",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
                                                          padding: const EdgeInsets.only(left: 10),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                  // child:Text("12\nJan",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.blueAccent),),
                                                ),
                                                height: 50,
                                                width: 50,
                                                margin: const EdgeInsets.all(3),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.deepOrangeAccent[100],
                                                ),
                                              ),
                                              title: Text("Consultation",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                                              subtitle: Text("Tuesday . 9am-11am",style: TextStyle(color: Colors.indigo),),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.redAccent[100],
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            padding: const EdgeInsets.all(3),
                                            margin: const EdgeInsets.only(bottom: 5),
                                          ),

                                        ],
                                      ),
                                      margin: const EdgeInsets.only(top: 10, left: 20, right: 20,bottom: 20),
                                      height: 130,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //height:50.0,
                          // width: 50.0,
                        ),
                      ),
                    ],
                  ),

                ),


              ],
            ),
            // padding: EdgeInsets.only(left: 0.0,top: 10.0,right: 0.0,bottom: 20.0),
            //height: 800.0,
          ),
        ],
      ),

      ),
    );
  }
}