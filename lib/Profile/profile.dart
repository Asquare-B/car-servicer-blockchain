import 'package:blockchain/Items/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardStyle = TextStyle( fontSize: 20,fontWeight: FontWeight.w800);
    var cardStyle1 = TextStyle( fontSize: 16,fontWeight: FontWeight.w600);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                image: AssetImage('assets/images/Untitled.png'),
                fit: BoxFit.fill,
              )
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
        ),
        title: Text(
          'My Profile', style: TextStyle(color: Colors.black),),
      ),
      drawer: Menu(),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/profile.png',height: 150,)
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CardStyle(title: 'Name:',text: 'Name'),
                  CardStyle(title: 'Email:',text: 'Name'),
                  CardStyle(title: 'DOB:',text: 'Name'),
                  CardStyle(title: 'Gender:',text: 'Name'),
                  CardStyle(title: 'CAR Number:',text: 'Name'),
                  CardStyle(title: 'Address:',text: 'Name'),
                  CardStyle(title: 'ZipCode:',text: 'Name'),
                  CardStyle(title: 'State:',text: 'Name'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget CardStyle({title,text}){
  var cardStyle = TextStyle( fontSize: 20,fontWeight: FontWeight.w800);
  var cardStyle1 = TextStyle( fontSize: 16,fontWeight: FontWeight.w600);
  return Card(
          color: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
          ),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(title,style: cardStyle),
                Text(text,style: cardStyle1),
              ],
            ),
          )
      );
}