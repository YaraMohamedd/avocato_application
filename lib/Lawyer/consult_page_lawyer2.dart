import 'package:avocato_application/User/user_home_page.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class ConsultLawyer extends StatefulWidget {

  @override
  _ConsultLawyerState createState() => _ConsultLawyerState();
}

class _ConsultLawyerState extends State<ConsultLawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('  القضيه الحاليه',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios,color: mainColor,),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Card(
                  shape: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(15),
                  borderSide:BorderSide.none
          ),
                  child: Container(
                    height: 208,
                    width: 317,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column (
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('احمد محمد',style: TextStyle(fontSize:17,fontFamily: 'Almarai',color: mainColor)),
                            SizedBox(width: 12,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/person.jpg'),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(' الان',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: secondColor)),
                            SizedBox(width: 12,),
                            Text(' الموعد المحدد',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor)),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(' 1000 جنيه',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: secondColor)),
                            SizedBox(width: 12,),
                            Text('  تكلفة الاستشاره',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor)),


                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    CircleAvatar(

                      radius: 25,

                      backgroundColor: whiteColor,

                      child: Icon(Icons.phone,size: 25,color: mainColor,),

                    ),
                    CircleAvatar(

                      radius: 25,

                      backgroundColor: secondColor,

                      child: Icon(Icons.video_call,size: 25,color: mainColor,),

                    ),
                    CircleAvatar(

                      radius: 25,

                      backgroundColor: whiteColor,

                      child: Icon(Icons.message,size: 25,color: mainColor,),

                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                width: 237,
                height: 50,
                child: RaisedButton(
                    color: mainColor,
                    child: Text('  الغاء الاستشاره',style: TextStyle(color: whiteColor,fontSize: 18,fontFamily: 'Almarai'),),
                    shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)

                    ),
                    onPressed: (){
                    //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserHomePage()));

                    }),
              ),
            ],
          ),
        ),
    );
  }
}
