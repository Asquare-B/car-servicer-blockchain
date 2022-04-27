import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 15,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center + Alignment(0,-1.23),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 45,
                  ),
                ),
                Align(
                  alignment: Alignment.center + Alignment(-.05,.65),
                  child: Text(
                    'Username',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                ),
                Align(
                  alignment: Alignment.center + Alignment(-.05,1.1),
                    child:Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('View Profile', style: TextStyle(color: Colors.blue, fontSize: 12),),
                    ) ,
                  ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
            },
            child: buttonTile("Home"),
          ),
          GestureDetector(
            child: buttonTile("Services"),
          ),
          GestureDetector(
            onTap: () {
            },
            child: buttonTile("Address"),
          ),
          GestureDetector(
            child: buttonTile("Cars"),
            onTap: (){
            },
          ),
          GestureDetector(
            child: buttonTile("Contact us"),
            onTap: () {
            },
          ),
          GestureDetector(
            child: buttonTile("Help"),
            onTap: () {
            },
          ),
          GestureDetector(
            child: buttonTile("Log out"),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}

Widget buttonTile(String text){
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, top: 0.0, right: 8.0, bottom: 0.0),
    child: Container(
      height: 50,
      child: InkWell(
        splashColor: Colors.amberAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: TextStyle(fontSize: 18),),
            Icon(Icons.arrow_right,)
          ],
        ),
      ),
    ),
  );
}