import 'package:blockchain/Items/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ServiceForm extends StatefulWidget {
  const ServiceForm({Key? key}) : super(key: key);

  @override
  _ServiceFormState createState() => _ServiceFormState();
}

class _ServiceFormState extends State<ServiceForm> {
  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        drawer: Menu(),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
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
          title: Text('Service Form'),
        ),
        body: Scaffold(
          body: SafeArea(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Text(
                      "Car Service Details",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child:SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              inputFile1(label: "Customer Email"),
                              SizedBox(height: 15,),
                              inputFile1(label: "Engine"),
                              SizedBox(height: 15,),
                              inputFile1(label: "Cooling System"),
                              SizedBox(height: 15,),
                              inputFile1(label: "Break and Clutch"),
                              SizedBox(height: 15,),
                              inputFile1(label: "Steering and Suspension"),
                              SizedBox(height: 15,),
                              inputFile1(label: "Tyre and Alignment"),
                              SizedBox(height: 15,),
                              inputFile1(label: "Fuel System"),
                              SizedBox(height: 15,),
                              inputFile1(label: "Battery and GearBox"),
                              SizedBox(height: 15,),
                              inputFile(label: "Additional Details"),
                            ],
                          ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {},
                        color: Colors.indigoAccent,
                        splashColor: Colors.blue,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Submit Details",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
        ),
      );
  }
}

Widget inputFile1({label, obscureText = false}) {
  return Row(
    children: <Widget>[
      Container(
        width: 150,
        child: Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
          )
        ),
      ),
      Container(
        width: 220,
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              border:OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
        ),
      ),
    ],
  );
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
        height: 10,
      ),
      TextField(
        maxLines: 3,
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