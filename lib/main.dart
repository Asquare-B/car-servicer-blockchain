
import 'package:blockchain/Authentication/Welcome.dart';
import 'package:blockchain/Forms/serviceform.dart';
import 'package:blockchain/HomePages/UserHome.dart';
import 'package:blockchain/trial.dart';
import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ServiceForm(),
    );
  }
}