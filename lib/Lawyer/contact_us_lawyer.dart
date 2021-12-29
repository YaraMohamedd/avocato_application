import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class ContactUsLawyer extends StatefulWidget {

  @override
  _ContactUsLawyerState createState() => _ContactUsLawyerState();
}

class _ContactUsLawyerState extends State<ContactUsLawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('تواصل معنا',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: secondColor)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.highlight_remove_outlined,color: mainColor,),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 60),
              height: 156,
              width: 306,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(' اسم المستخدم',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                      Text('  الاسم الثاني',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('  y@yahoo.com',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                      Text('   البريد الالكتروني',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('  0108765444',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                      Text('   رقم الهاتف',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Text('التفاصيل',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),textAlign: TextAlign.right,),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 244,
            height: 56,
            child: RaisedButton(

                color: mainColor,
                child: Text('  ارسال ',style: TextStyle(color: secondColor,fontSize: 18,fontFamily: 'Almarai'),),
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)

                ),
                onPressed: (){}),
          ),
        ],
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
