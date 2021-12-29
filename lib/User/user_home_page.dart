import 'package:avocato_application/Lawyer/search_page.dart';
import 'package:avocato_application/User/chat_screen.dart';
import 'package:avocato_application/Widgets/main_drawer.dart';
import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  @override
  _UserHomePageState createState()=> _UserHomePageState();
}
class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body:SafeArea(
        child:Stack(
          children: [
            Column(
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.notifications),
                    ),
                    Center(child: Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
                        child:Text('أفوكاتو',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 20,fontWeight: FontWeight.bold),))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                        },
                          child: Icon(Icons.search)),
                    ),

                  ],
                ),
                Center(child:Container(
                    margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
                    child:Text('مرحبا بك في تطبيق',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 20,fontWeight: FontWeight.bold),))),
                Center(child:Container(
                    margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
                    child:Text('لطلب استشاره حدد نوع من التخصصات الاتيه',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 15,fontWeight: FontWeight.bold),))),
                Center(child:Container(
                    margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
                    child:Text(' افضل المحامين تقييما',style: TextStyle(color:secondColor,fontFamily: 'Almarai',fontSize: 15,fontWeight: FontWeight.bold),))),
                Container(
                  margin: EdgeInsets.only(top: 50,),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Card(
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none
                              ),
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 150,
                                width: 150,
                                child:                  Column(
                                  children: [
                                    Text('احمد محمد',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),),
                                    Text(' القاهره',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        Icon(Icons.star,color: Colors.amber,size: 10,),
                                        Icon(Icons.star,color: Colors.amber,size: 10,),
                                        Icon(Icons.star,color: Colors.amber,size: 10,),
                                        Icon(Icons.star,color: Colors.amber,size: 10,),
                                        Icon(Icons.star,color: Colors.amber,size: 10,)
                                      ],),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Card(
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none
                              ),
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 150,
                                width: 150,
                                child:                  Column(
                                  children: [
                                    Text('احمد محمد',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),),
                                    Text(' القاهره',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.star,color: Colors.amber,size: 10,),
                                          Icon(Icons.star,color: Colors.amber,size: 10,),
                                          Icon(Icons.star,color: Colors.amber,size: 10,),
                                          Icon(Icons.star,color: Colors.amber,size: 10,),
                                          Icon(Icons.star,color: Colors.amber,size: 10,)
                                        ],),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(child:Container(
                    margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
                    child:Text('   اختر التخصص',style: TextStyle(color:secondColor,fontFamily: 'Almarai',fontSize: 15,fontWeight: FontWeight.bold),))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 10,left: 10),
                      height: 180,
                      width: 300,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.tv_outlined,color: secondColor,),
                                    ),
                                    Text('الموسوعه',style: TextStyle(color:mainColor,fontFamily: 'Almarai',fontSize: 15,fontWeight: FontWeight.normal),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.menu_book_sharp,color: secondColor,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('جدول اعمالي',style: TextStyle(color:mainColor,fontFamily: 'Almarai',fontSize: 15,fontWeight: FontWeight.normal),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.home,color: secondColor,),
                                    ),
                                    Text('دليل المحامين',style: TextStyle(color:mainColor,fontFamily: 'Almarai',fontSize: 15,fontWeight: FontWeight.normal),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.event_note_sharp,color: secondColor,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(' ملاحظات',style: TextStyle(color:mainColor,fontFamily: 'Almarai',fontSize: 15,fontWeight: FontWeight.normal),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )

              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 210,left: 60,),
              child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage:AssetImage('assets/person.jpg')
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 210,left: 250,),
              child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage:AssetImage('assets/person.jpg')
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 670,left: 340,),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                },
                child: CircleAvatar(

                  radius: 25,

                  backgroundColor: whiteColor,

                  child: Icon(Icons.message,size: 25,color: mainColor,),

                ),
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          width: double.maxFinite,
          height: 70,
          decoration: BoxDecoration(
            color: mainColor,
              borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(10.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabItem(
             icon: Icons.filter_list,
                text: '',
                onTap: (){},
                isSelected: true,


              ),
              TabItem(
                icon: Icons.badge,
                text: '',
                onTap: (){},
                isSelected: true,


              ),
              TabItem(
                icon: Icons.print_rounded,
                text: '',
                onTap: (){},
                isSelected: true,


              ),
              TabItem(
                icon: Icons.home,
                text: '',
                onTap: (){},
                isSelected: true,


              )
            ],
          ),
        ),
      ),
    );
  }
}
