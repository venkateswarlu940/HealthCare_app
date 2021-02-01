import 'package:demo_app/sample_page.dart';
import 'package:flutter/material.dart';
import 'BMI.dart';
import 'Login.dart';
import 'RES_sharedPref.dart';
import 'about.dart';
import 'booksession.dart';
import 'doctor_page.dart';
import 'launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Myprofile_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Myprofile_screen1();
  }
}
class Myprofile_screen1 extends State<Myprofile_screen> {
  SharedPreferences LoginData1;
  String username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    LoginData1 = await SharedPreferences.getInstance();
    setState(() {
      username = LoginData1.getString('username');
    });
  }
  @override
  Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
    return SafeArea(
      child:Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Health Care",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            tooltip: 'cart Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: Icon(Icons.notification_important),
            tooltip: 'Notification Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
      ),
        drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("venkatesh"),
              accountEmail: Text(("venky@gmail.com")),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text("V"),
              ),
              // child: Text("Header"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.waves),
              title: Text("Shared_Exmp"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Shared_res()),
                );
              },
              // trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              leading: Icon(Icons.set_meal),
              title: Text("BMICalc"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BMICalc()),
                );
              },
             // trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("book_session"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>Book_Session()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text("Doctor_page"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>doctor_page()),
                );
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.local_hospital_rounded),
            //   title: Text("Medical"),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder:(context)=>Mediacal()),
            //     );
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text("Find Your Doctor"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>desire_page1()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>About()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Url_Launcher"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>Launcher()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                LoginData1.setBool('login', true);
                Navigator.pushReplacement(
                  context,
                  new MaterialPageRoute(builder:(context)=>Login()));
              },
            ),
          ],
        ),
      ),
      body:Container(
        child: Column(
          children: [

            ListTile(
              title: Text("Hello,",
                style:
                TextStyle(fontSize: 20.0,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
            ListTile(
              title: Text("$username,",
                style:
                TextStyle(fontSize: 20.0,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
            ListTile(
              subtitle: Text("How can we take care yourself ?,",
                style:
                TextStyle(fontSize: 20.0,
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      FlatButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => doctor_page(),),
                        );
                      },
                        padding: const EdgeInsets.all(0),
                     child:Card(
                        child:Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.account_circle,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              ListTile(
                                title: Text("Find Doctor",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text("210 Doctor",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.only(top: 20, left: 15),
                              ),
                            ],
                          ),
                          height: 150,
                          width: 150,
                          color: Colors.blue,
                          // margin: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                        ),
                      ),
                      ),
                      Card(
                        child:Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.account_balance,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              ListTile(
                                title: Text("Find Hospital",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text("30 Hospital",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.only(top: 20, left: 15),
                              ),
                            ],
                          ),
                          height: 150,
                          width: 150,
                          color: Colors.black38,
                          //margin: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        child:Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_to_photos,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              ListTile(
                                title: Text("Appointment",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text("59 Available",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.only(top: 20, left: 15),
                              ),
                            ],
                          ),
                          height: 150,
                          width: 150,
                          color: Colors.black38,
                          // margin: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                        ),
                      ),
                      Card(
                        child:Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.event,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              ListTile(
                                title: Text("Drug List",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text("22 Services",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.only(top: 20, left: 15),
                              ),
                            ],
                          ),
                          height: 150,
                          width: 150,
                          color: Colors.black38,
                          // margin: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              padding:const EdgeInsets.all(27),
            ),
          ],

        ),
        padding: const EdgeInsets.all(10),
        color: Color.fromARGB(100, 255, 244, 214),
      ),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        // onTap: (){
        //
        // },
        items: [
          BottomNavigationBarItem(
            title:Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title:Text("Doctors"),
            icon: Icon(Icons.add_box_rounded),
          ),
          BottomNavigationBarItem(
            title:Text("Blogs"),
            icon: Icon(Icons.airline_seat_recline_extra),
          ),
          BottomNavigationBarItem(
            title:Text("indicators"),
            icon: Icon(Icons.waves),
          ),
          BottomNavigationBarItem(
            title:Text("profile"),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ) ,
    ),
    );
  }
}