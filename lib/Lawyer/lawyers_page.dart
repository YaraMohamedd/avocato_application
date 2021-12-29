import 'package:avocato_application/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LawyerPage extends StatefulWidget {

  @override
  _LawyerPageState createState() => _LawyerPageState();
}

class _LawyerPageState extends State<LawyerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Align(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  backgroundImage:AssetImage('assets/person.jpg')
                ),
              ),
              Text('احمد محمد',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.star,color: Colors.amber,size: 10,),
                Icon(Icons.star,color: Colors.amber,size: 10,),
                Icon(Icons.star,color: Colors.amber,size: 10,),
                Icon(Icons.star,color: Colors.amber,size: 10,),
                Icon(Icons.star,color: Colors.amber,size: 10,)
              ],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('المواعيد المتاحه',style: TextStyle(color: mainColor,fontSize: 15,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 30),
                    height: 48,
                    width: 164,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.calendar_today,size: 15,color: secondColor,),
                        ),
                      Text('12/2/2200',style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.timer,size: 15,color: secondColor,),
                        ),
                        Text('12:00',style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 30),
                    height: 48,
                    width: 164,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.calendar_today,size: 15,color: secondColor,),
                        ),
                        Text('12/2/2200',style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.timer,size: 15,color: secondColor,),
                        ),
                        Text('12:00',style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),)
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 30),
                    height: 48,
                    width: 164,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.calendar_today,size: 15,color: secondColor,),
                        ),
                        Text('12/2/2200',style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.timer,size: 15,color: secondColor,),
                        ),
                        Text('12:00',style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 30),
                    height: 48,
                    width: 164,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.calendar_today,size: 15,color: secondColor,),
                        ),
                        Text('12/2/2200',style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.timer,size: 15,color: secondColor,),
                        ),
                        Text('12:00',style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),)
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:EdgeInsets.only(top: 30,left: 20,right: 20),
                    child:Column(
                    // mainAxisAlignment: MainAxisAlignmentt.spaceBetween,
                      children:[
                        Text('10',style: TextStyle(color: mainColor),),
                        Text('عدد الاستشارات',style: TextStyle(color: secondColor,fontSize: 15,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('القاهره',style: TextStyle(color: secondColor),),
                            Text('المدينه',style: TextStyle(color: mainColor),),


                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30,left: 20,right: 30),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignmentt.spaceBetween,
                      children: [
                        Text('20',style: TextStyle(color: mainColor),),
                        Text(' اتعاب الاستشاره',style: TextStyle(color: secondColor,fontSize: 15,fontWeight: FontWeight.bold,fontFamily: 'Almarai'),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('قانون',style: TextStyle(color: secondColor),),
                            Text('تخصص',style: TextStyle(color: mainColor),),


                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none
                  ),
                  child: Container(
                    height: 180,
                    width: 280,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Row(
                              children: [
                                Text('4 سنوات'),
                                Text('الخبره',style: TextStyle(color: secondColor,fontSize: 15,fontWeight: FontWeight.normal,fontFamily: 'Almarai'),),
                              ],
                            ),
                              Row(
                                children: [
                                  Text(' بكالريوس'),
                                  Text('المؤهل العالي',style: TextStyle(color: secondColor,fontSize: 15,fontWeight: FontWeight.normal,fontFamily: 'Almarai'),),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('4 سنوات'),
                                  Text('الخبره',style: TextStyle(color: secondColor,fontSize: 15,fontWeight: FontWeight.normal,fontFamily: 'Almarai'),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(' بكالريوس'),
                                  Text('المؤهل العالي',style: TextStyle(color: secondColor,fontSize: 15,fontWeight: FontWeight.normal,fontFamily: 'Almarai'),),
                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 200,
                height: 50,
                child: RaisedButton(

                    color: mainColor,
                    child: Text('  طلب الاستشاره',style: TextStyle(color: whiteColor,fontSize: 18,fontFamily: 'Almarai'),),
                    shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)

                    ),
                    onPressed: (){}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
