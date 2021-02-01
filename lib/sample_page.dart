import 'package:flutter/material.dart';

import 'about.dart';
class desire_page1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return desire_page2();
  }
}
class desire_page2 extends State<desire_page1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child:Scaffold(
        //backgroundColor: Colors.transparent,
        appBar: AppBar(
        title: Text("Doctors list",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
         ),
          body: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    // Container(
                    //   //padding: const EdgeInsets.only(left: 50.0,right: 20.0),
                    //   decoration: BoxDecoration(
                    //     color: Colors.grey[300],
                    //
                    //     borderRadius: BorderRadius.circular(25),
                    //   ),
                    //   height: 50.0,
                    //   width: 50.0,
                    //   child: Align(
                    //     alignment: Alignment.topRight,
                    //     child:Image.network('https://www.hitechanimation.com/blog/wp-content/uploads/2018/02/mouse-hd-png1258.png'),
                    //     // FlutterLogo(
                    //     // //   size: 40,
                    //     // // ),
                    //   ),
                    // ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child:Text("Find Your Desired\n Doctor",
                              style:
                              TextStyle(fontSize: 25.0,
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            height: 60,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(left:20.0,top:80.0,right: 10.0,bottom: 60),
                    ),
                    Container(
                      child: ListTile(
                        title: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only( left:20.0,top:10.0,right: 20.0,bottom: 10.0),
                            hintText: 'search for doctor',
                          ),
                        ),
                        trailing:Container(
                          width: 0.0,
                          child: Icon(Icons.search),
                          padding:EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange[300],
                            borderRadius: BorderRadius.circular(70),
                          ),
                          margin: EdgeInsets.only(left:20, top:0, right:20, bottom:0),
                          height: 50,
                        ),
                      ),
                      //padding: EdgeInsets.only(top:10.0,right: 10.0,bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.only(left: 20.0,top: 0.0,right: 20.0,bottom: 0.0),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text("Categories",
                            style:TextStyle(fontSize: 16.0,fontWeight:FontWeight.bold,
                              color:Colors.indigo,
                            ) ,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(right: 280.0,left: 10.0),
                    ),
                    Container(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget> [
                          Container(
                            child:FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => About()),
                                );
                              },
                              child: Card(
                                  elevation: 3,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      FractionalTranslation(
                                        translation: Offset(0.5, -0.3),
                                        child: Align(
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            child: Image.network("https://www.onlinelogomaker.com/blog/wp-content/uploads/2017/09/Dental-Logo-Design.jpg"),
                                            decoration: BoxDecoration(

                                              color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            padding: const EdgeInsets.only(left: 0),
                                          ),

                                        ),
                                      ),

                                      Container(

                                        child: Text("Dental \nSurgeon",style: TextStyle(color: Colors.indigo),),
                                        padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                        margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                                      ),
                                    ],
                                  )
                              ),
                            ),

                          ),
                          Container(
                            child: Card(
                                elevation: 3,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    FractionalTranslation(
                                      translation: Offset(0.5, -0.3),
                                      child: Align(
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          //child: Image.asset("assets/images/heartcheck.jpg"),
                                          child: Image.network("https://www.seekpng.com/png/full/330-3300019_medical-dental.png"),
                                          decoration: BoxDecoration(
                                              color: Colors.orangeAccent,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          padding: const EdgeInsets.only(left: 0),
                                        ),

                                      ),
                                    ),

                                    Container(
                                      child: Text("heart \nSurgeon",style: TextStyle(color: Colors.black),),
                                      padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                      margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                                    ),
                                  ],
                                )
                            ),
                            padding: const EdgeInsets.only(left: 10),
                          ),
                          Container(
                            child: Card(
                                elevation: 3,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    FractionalTranslation(
                                      translation: Offset(0.6, -0.3),
                                      child: Align(
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Image.network("https://www.seekpng.com/png/full/330-3300019_medical-dental.png"),
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrangeAccent,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          padding: const EdgeInsets.only(left: 0),
                                        ),

                                      ),
                                    ),

                                    Container(
                                      child: Text("Eye \nSpecialist",style: TextStyle(color: Colors.black),),
                                      padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                      margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                                    ),
                                  ],
                                )
                            ),
                            padding: const EdgeInsets.only(left: 10),
                          ),
                          Container(
                            child: Card(
                                elevation: 3,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    FractionalTranslation(
                                      translation: Offset(0.5, -0.3),
                                      child: Align(
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Image.network("https://www.seekpng.com/png/full/330-3300019_medical-dental.png"),
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          padding: const EdgeInsets.only(left: 0),
                                        ),

                                      ),
                                    ),

                                    Container(
                                      child: Text("Dental \nSurgeon",style: TextStyle(color: Colors.black),),
                                      padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                      margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                                    ),
                                  ],
                                )
                            ),
                            padding: const EdgeInsets.only(left: 10),
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 25),
                      height: 100,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("Top Doctors",style: TextStyle(
                              color: Colors.indigo,fontSize: 16, fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                      padding: const EdgeInsets.only(left: 15.0,top: 20.0,right: 10.0,bottom: 20.0),
                    ),
                    // Container(
                    //   child: Row(
                    //     children: [
                    //       Text("Top Doctors",style: TextStyle(
                    //           color: Colors.indigo,fontSize: 15, fontWeight: FontWeight.bold
                    //       ),),
                    //     ],
                    //   ),
                    //   padding: const EdgeInsets.only(left: 15,top: 20,bottom: 60.0),
                    // ),
                    Container(
                      child: ListView(
                        children: <Widget> [
                          Container(
                            child:FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => About()),
                                );
                              },
                              height: 75,
                              child: ListTile(
                                leading: Container(
                                  child: Image.network("https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg",
                                      height: 30,width: 30),
                                  height: 60,
                                  width: 40,
                                  margin: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blueAccent[100],
                                  ),
                                ),
                                title: Text("Dr. Stella Kane",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                                subtitle: Text("Heart Surgeon - Flower Hospitals",style: TextStyle(color: Colors.indigo),),
                              ),

                            ),
                            decoration: BoxDecoration(
                                color: Colors.indigo[100],
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: const EdgeInsets.all(3),
                            margin: const EdgeInsets.only(bottom: 5),
                          ),
                          Container(
                            height: 75,
                            child: ListTile(
                              leading: Container(
                                child: Image.network("https://thumbs.dreamstime.com/b/young-asian-doctor-smiling-handsome-man-wearing-lab-coat-stands-crossed-arms-vector-illustration-157083091.jpg",
                                  height: 30,width: 30,),
                                height: 45,
                                width: 45,
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueAccent[100],
                                ),
                              ),
                              title: Text("Dr. Joseph Cart",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                              subtitle: Text("Dental Surgeon - Flower Hospitals",style: TextStyle(color: Colors.indigo),),
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
                                child: Image.network("https://image.freepik.com/free-vector/doctor-pointing-clipboard_23-2147795772.jpg",
                                  height: 30,width: 30,),
                                height: 45,
                                width: 45,
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blueAccent[100],
                                ),
                              ),
                              title: Text("Dr. Venky",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                              subtitle: Text("Eye Specialist - SDM Hospitals",style: TextStyle(color: Colors.indigo),),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.redAccent[100],
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: const EdgeInsets.all(3),
                            margin: const EdgeInsets.only(bottom: 5),
                          ),
                          Container(
                            height: 75,
                            child: ListTile(
                              leading: Container(
                                child: Image.network("https://image.freepik.com/free-vector/doctor-pointing-clipboard_23-2147795772.jpg",
                                  height: 40,width: 40,),
                              ),
                              title: Text("Dr. Sachin",style: TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),),
                              subtitle: Text("Eye Specialist - SDM Hospitals",style: TextStyle(color: Colors.indigo),),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: const EdgeInsets.all(3),
                            margin: const EdgeInsets.only(bottom: 5),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.only(top: 15, left: 0, right: 0,bottom: 0.0),
                      height: 150,
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10,bottom: 10.0),
                height: 800,
              ),
            ],
          ),

      ),
    );
  }
}
//"https://www.seekpng.com/png/full/330-3300019_medical-dental.png",