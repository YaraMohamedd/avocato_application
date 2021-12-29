import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class HomePageLawyer extends StatefulWidget {

  @override
  _HomePageLawyerState createState() => _HomePageLawyerState();
}

class _HomePageLawyerState extends State<HomePageLawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Column(
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
                  child: Icon(Icons.search),
                ),

              ],
            ),
            Center(child:Container(
                margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
                child:Text('مرحبا بك في تطبيق',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 20,fontWeight: FontWeight.bold),))),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 40,left: 10),
                  height: 400,
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
