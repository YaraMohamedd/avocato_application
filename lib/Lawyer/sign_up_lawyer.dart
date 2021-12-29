import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class SignUpLawyer extends StatefulWidget {

  @override
  _SignUpLawyerState createState() => _SignUpLawyerState();
}

class _SignUpLawyerState extends State<SignUpLawyer> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      margin:EdgeInsets.only(top: 40,right: 20,left: 20),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child:Icon(Icons.camera_alt,color: secondColor,),
                        )),
                    Text('بطاقة المحاماه',style: TextStyle(fontSize:14,fontFamily: 'Almarai',color: mainColor))
                  ],
                ),
                Column(
                  children: [
                    Container(
                        margin:EdgeInsets.only(top: 40,right: 20,left: 20),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child:Icon(Icons.person,color: secondColor,),
                        )),
                    Text(' اضف صوره شخصيه',style: TextStyle(fontSize:14,fontFamily: 'Almarai',color: mainColor))
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    hintText: ' اسم المستخدم',
                    suffixIcon: Icon(Icons.person,color: secondColor,)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
              child: TextFormField(
                textAlign: TextAlign.right,

                decoration: InputDecoration(
                    hintText: '  المدينه',
                    suffixIcon: Icon(Icons.location_city,color: secondColor,)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    hintText: 'رقم الهاتف',
                    suffixIcon: Icon(Icons.phone_in_talk,color: secondColor,)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
              child: TextFormField(
                textAlign: TextAlign.right,

                decoration: InputDecoration(
                    hintText: '  كلمة المرور',
                    suffixIcon: Icon(Icons.lock,color: secondColor,)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
              child: TextFormField(
                textAlign: TextAlign.right,

                decoration: InputDecoration(
                    hintText: 'تاكيد كلمة المرور ',
                    suffixIcon: Icon(Icons.lock,color: secondColor,)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 200,
              height: 50,
              child: RaisedButton(

                  color: mainColor,
                  child: Text('  انشاء',style: TextStyle(color: whiteColor,fontSize: 18,fontFamily: 'Almarai'),),
                  shape:OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  onPressed:(){}),
            ),
          ],
        ),
      ),
    );
  }
}
