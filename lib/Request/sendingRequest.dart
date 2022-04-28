import 'package:blockchain/HomePages/ServiceHome.dart';
import 'package:blockchain/Items/Drawer.dart';
import 'package:flutter/material.dart';

class servicepage extends StatefulWidget {
  const servicepage({Key? key}) : super(key: key);

  @override
  _servicepageState createState() => _servicepageState();
}

class _servicepageState extends State<servicepage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: Menu(),
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
      body: Scaffold(
        body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: MediaQuery.of(context).size.height * 0.9,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Request Car Details",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: size.height / 3,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Image.asset('assets/images/block-welcome.jpg'),
                  ),
                  SizedBox(height: 20,),
                  Column(
                    children: <Widget>[
                      inputFile(label: "Custormer Email"),
                      SizedBox(width: 20,),
                      RaisedButton(
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>serviceHomePage())
                          );
                        },
                        child: Text(
                            "Send Request"
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}

Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}