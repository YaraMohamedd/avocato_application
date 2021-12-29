import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class RequestPageScreen extends StatefulWidget {

  @override
  _RequestPageScreenState createState() => _RequestPageScreenState();
}

class _RequestPageScreenState extends State<RequestPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
         // title: Text(' عن التطبيق',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
          backgroundColor: Colors.white,
          leading: Icon(Icons.highlight_remove_outlined,color: mainColor,),
        ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none
                  ),
                  child: Container(
                    color: mainColor,
                    height: 180,
                    width: 280,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(

                              child: Icon(Icons.arrow_back_ios,size: 15),height: 25,width: 25,color: secondColor,),
                            Column(
                              children: [
                                Text('احمد محمد',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                                Text(' القاهره',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(children: [
                                    Icon(Icons.star,color: Colors.amber,size: 10,),
                                    Icon(Icons.star,color: Colors.amber,size: 10,),
                                    Icon(Icons.star,color: Colors.amber,size: 10,),
                                    Icon(Icons.star,color: Colors.amber,size: 10,),
                                    Icon(Icons.star,color: Colors.amber,size: 10,)
                                  ],),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('محافظة القاهره',style: TextStyle(fontFamily: 'Almarai',color: secondColor),),
                                    Text(' تخصص قانون',style: TextStyle(fontFamily: 'Almarai',color: mainColor),)
                                  ],
                                )
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/person.jpg'),

                            )
                          ],
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 30),
                        //   width: 231,
                        //   height: 35,
                        //   child: RaisedButton(
                        //
                        //       color: whiteColor,
                        //       child: Text('  اتعاب استشاره',style: TextStyle(color: mainColor,fontSize: 12,fontFamily: 'Almarai'),),
                        //       shape: OutlineInputBorder(
                        //           borderSide: BorderSide.none,
                        //           borderRadius: BorderRadius.circular(15)
                        //
                        //       ),
                        //       onPressed: (){}),
                        // ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none
                  ),
                  child: Container(
                    height: 100,
                    width: 280,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(

                              child: Icon(Icons.arrow_back_ios,size: 15),height: 25,width: 25,color: secondColor,),
                            Text('   نوع الاستشاره الرئيسي جنائي',style: TextStyle(color: mainColor,fontSize: 12,fontFamily: 'Almarai'),)

                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 231,
                          height: 35,
                          child: RaisedButton(

                              color: whiteColor,
                              child: Text('  اتعاب استشاره',style: TextStyle(color: mainColor,fontSize: 12,fontFamily: 'Almarai'),),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(

                              child: Icon(Icons.arrow_back_ios,size: 15),height: 25,width: 25,color: secondColor,),
                            Column(
                              children: [
                                Text('احمد محمد',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),),
                                Text(' القاهره',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(children: [
                                    Icon(Icons.star,color: Colors.amber,size: 10,),
                                    Icon(Icons.star,color: Colors.amber,size: 10,),
                                    Icon(Icons.star,color: Colors.amber,size: 10,),
                                    Icon(Icons.star,color: Colors.amber,size: 10,),
                                    Icon(Icons.star,color: Colors.amber,size: 10,)
                                  ],),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('محافظة القاهره',style: TextStyle(fontFamily: 'Almarai',color: secondColor),),
                                    Text(' تخصص قانون',style: TextStyle(fontFamily: 'Almarai',color: mainColor),)
                                  ],
                                )
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,


                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 231,
                          height: 35,
                          child: RaisedButton(

                              color: whiteColor,
                              child: Text('  اتعاب استشاره',style: TextStyle(color: mainColor,fontSize: 12,fontFamily: 'Almarai'),),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
