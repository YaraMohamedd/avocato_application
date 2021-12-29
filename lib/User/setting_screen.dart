import 'package:avocato_application/User/personal_page.dart';
import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PersonalPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.arrow_back_ios,size: 14,color: mainColor,),
                      Text('ملفي الشخصي',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                      Icon(Icons.person,size: 20,color: mainColor),
                    ],
                  ),
                ),
                    Divider(),
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PersonalPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.arrow_back_ios,size: 14,color: mainColor,),
                          Text(' تغيير كلمة المرور',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                          Icon(Icons.lock,size: 20,color: mainColor),
                        ],
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.arrow_back_ios,size: 14,color: mainColor,),
                        Text('   عن التطبيق',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                        Icon(Icons.info,size: 20,color: mainColor),
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
                height: 156,
                width: 306,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.arrow_back_ios,size: 14,color: mainColor,),
                        Text(' تواصل معنا',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                        Icon(Icons.contact_phone,size: 20,color: mainColor),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.arrow_back_ios,size: 14,color: mainColor,),
                        Text('  شروط واحكام ',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                        Icon(Icons.note_rounded,size: 20,color: mainColor),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.arrow_back_ios,size: 14,color: mainColor,),
                        Text('    بلاغات',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                        Icon(Icons.not_interested_outlined,size: 20,color: mainColor),
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
                height: 56,
                width: 306,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.arrow_back_ios,size: 14,color: mainColor,),
                        Text('  تسجيل خروج',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                        Icon(Icons.logout,size: 20,color: mainColor),
                      ],
                    ),
                 
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          width: double.maxFinite,
          height: 70,
          decoration: BoxDecoration(
              color: mainColor,
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
