import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        leading: Icon(Icons.phone,color: mainColor,),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/person.jpg'),
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 71,
                width: 300,
                child: ListTile(
                  title: Text('من موقفي القانوني من بناء مشروع تجاري اريد ان استفسر',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(15)
                ),
                height: 60,
                width: 284,
                child: ListTile(
                  title: Text('اهلا بك ساتواصل معك خلال ساعه',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: whiteColor),),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(15)
                ),
                height: 60,
                width: 198,
                child: ListTile(
                  title: Text('في انتظارك',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(15)
                ),
                height: 60,
                width: 198,
                child: ListTile(
                  title: Text(' تمام',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: secondColor),),
                ),
              ),
            )
          ],
        ),

      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 100,
          width: 375,
          child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.link),
            suffixIcon: Icon(Icons.send),
            hintText: 'ابحث عن محادثه',
            border: OutlineInputBorder(
              borderSide: BorderSide.none
            )
          ),
          ),
        ),
      ),
    );
  }
}
