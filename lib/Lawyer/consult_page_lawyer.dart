import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class ConsultPageLawyer extends StatefulWidget {

  @override
  _ConsultPageLawyerState createState() => _ConsultPageLawyerState();
}

class _ConsultPageLawyerState extends State<ConsultPageLawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('جميع القضايا',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.notifications,color: mainColor,),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('ملغيه',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor)),
                    Text('منتهيه',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor)),
                    Text('نشطه',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor)),
                    Container(
                        height: 33,
                        width: 103,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: secondColor
                        ),
                        child: Center(child: Text('انتظار',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor)))),



                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 120),
                  height: 181,
                  width: 317,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: mainColor
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text('احمد محمد',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('االموعد المحدد:12/12',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                          )),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('تكلفة الاستشاره:1000جنيه',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                          )),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130),
                  height: 181,
                  width: 317,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: mainColor
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text('احمد محمد',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('االموعد المحدد:12/12',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                          )),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('تكلفة الاستشاره:1000جنيه',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                          )),

                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 150,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('جنائي ',style: TextStyle(color: secondColor,fontSize: 15,fontFamily: 'Almarai'),),
                  ),
                  Text(' النوع',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150,left: 220),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('انتظار ',style: TextStyle(color: secondColor,fontSize: 15,fontFamily: 'Almarai'),),
                  ),
                  Text(' الحاله',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 470,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('جنائي ',style: TextStyle(color: secondColor,fontSize: 15,fontFamily: 'Almarai'),),
                  ),
                  Text(' النوع',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 470,left: 220),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('انتظار ',style: TextStyle(color: secondColor,fontSize: 15,fontFamily: 'Almarai'),),
                  ),
                  Text(' الحاله',style: TextStyle(color: whiteColor,fontSize: 15,fontFamily: 'Almarai'),),
                ],
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
              color: secondColor,
              borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(15.0))),
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
