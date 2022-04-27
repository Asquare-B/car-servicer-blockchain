import 'package:blockchain/HomePages/UserHome.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => UserHomePage()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white70,
        child: Image.asset("assets/images/block-welcome.jpg",height: 300,)
    );
  }
}