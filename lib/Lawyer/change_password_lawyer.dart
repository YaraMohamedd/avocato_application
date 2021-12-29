import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class ChangePasswordLawyer extends StatefulWidget {

  @override
  _ChangePasswordLawyerState createState() => _ChangePasswordLawyerState();
}

class _ChangePasswordLawyerState extends State<ChangePasswordLawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('تغيير كلمة المرور',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: secondColor)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
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
                          Text('  .......',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                          Text('   كلمة المرور الحاليه',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('  ......',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                          Text('   كلمة المرور الجديده ',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('  ......',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                          Text('تاكيد كلمة المرور',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                        ],
                      ),

                    ],
                  ),
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
