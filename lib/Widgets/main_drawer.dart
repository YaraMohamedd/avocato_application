import 'package:avocato_application/User/setting_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool homeColor = true;
  bool cartColor=false;
  bool checkoutColor = false;
  bool aboutColor = false;
  bool contactUsColor = false;
  bool profileColor = false;
  MediaQueryData? mediaQuery;
  @override
  Widget build(  context) {
    return Drawer(
     child: ListView(
       children:[
          ListTile(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
            },
            title:Text('Settings'),
            leading:Icon(Icons.settings),
          )
       ],
     ),
    );
  }
}
