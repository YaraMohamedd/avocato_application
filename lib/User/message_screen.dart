import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';
class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}
class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('المحادثات',style: TextStyle(color: secondColor,fontFamily: 'Almarai',fontSize: 20),),
      ),
      body: SafeArea(
        child:Container(
          margin:EdgeInsets.only(left: 20,right: 20),
          child:SingleChildScrollView(
            child: Column(
              
              children: [
                Container(

                  margin: EdgeInsets.only(top: 20,),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.6),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: 'ابحث عن محادثه',
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                          SizedBox(height: 10,),
                          Text('شيرين وافقت علي طلب الاستشاره',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)

                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage:AssetImage('assets/person.jpg')
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                          SizedBox(height: 10,),
                          Text('شيرين وافقت علي طلب الاستشاره',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)
                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage:AssetImage('assets/person.jpg')
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                          SizedBox(height: 10,),
                          Text('شيرين وافقت علي طلب الاستشاره',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)
                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage:AssetImage('assets/person.jpg')
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                          SizedBox(height: 10,),
                          Text('شيرين وافقت علي طلب الاستشاره',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)
                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage:AssetImage('assets/person.jpg')
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                          SizedBox(height: 10,),
                          Text('شيرين وافقت علي طلب الاستشاره',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)
                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage:AssetImage('assets/person.jpg')
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                          SizedBox(height: 10,),
                          Text('شيرين وافقت علي طلب الاستشاره',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)
                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage:AssetImage('assets/person.jpg')
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children:[
                          Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                          SizedBox(height: 10,),
                          Text('شيرين وافقت علي طلب الاستشاره',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)
                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage:AssetImage('assets/person.jpg')
                        ),
                      ),
                    ],
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
