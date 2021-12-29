import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class ProfileLawyer extends StatefulWidget {
  @override
  _ProfileLawyerState createState() => _ProfileLawyerState();
}

class _ProfileLawyerState extends State<ProfileLawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        // title: Text('استشاراتي',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.notifications,color: mainColor,),
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/person.jpg'),
            ),
          ),
          Text('اسم المستخدم',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: secondColor)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                margin: EdgeInsets.only(top: 20),
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 104,
                width: 306,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('  القاهره',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                        Text('العنوان',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('  مهندس',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                        Text('    الوظيفه',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 244,
            height: 56,
            child: RaisedButton(

                color: mainColor,
                child: Text('  حفظ التغيرات',style: TextStyle(color: secondColor,fontSize: 18,fontFamily: 'Almarai'),),
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
