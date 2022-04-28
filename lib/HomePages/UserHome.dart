import 'package:blockchain/Forms/CARandADDRESS.dart';
import 'package:blockchain/Items/Drawer.dart';
import 'package:blockchain/Profile/profile.dart';
import 'package:blockchain/Request/requestList.dart';
import 'package:blockchain/Service/servicehistory.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
              image: DecorationImage(
                image: AssetImage('assets/images/Untitled.png'),
                fit: BoxFit.fill,
              )
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
        ),
        title: Text('Home Page'),
      ),
      drawer: Menu(),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: GridView.count(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          primary: true,
                          children: <Widget>[
                            InkWell(
                              onTap: () {},
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Image.asset('assets/images/timetable.png',height: 100)
                                    ),
                                    SizedBox(height: 6,),
                                    Text("Service", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=> Request())
                                );
                              },
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Container(
                                          child: Image.asset('assets/images/extra class.png',height: 100)
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text("Requests", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>serviceHistory())
                                );
                              },
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Container(
                                          child: Image.asset('assets/images/faculty.png',height: 100)
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text("Service History", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=>addresscarform())
                                );
                              },
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Container(
                                          child: Image.asset('assets/images/s class.png',height: 100)
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text("Car and Address", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=>Profile())
                                );
                              },
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Container(
                                          child: Image.asset('assets/images/details.jpg',height: 100)
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text("Profile details", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                          crossAxisCount: 2),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
