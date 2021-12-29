import 'package:avocato_application/Lawyer/sign_up_lawyer.dart';
import 'package:avocato_application/User/forget_password_screen.dart';
import 'package:avocato_application/User/sign_in_user.dart';
import 'package:avocato_application/User/sign_up_user.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class SignInLawyer extends StatefulWidget {

  @override
  _SignInLawyerState createState() => _SignInLawyerState();
}

class _SignInLawyerState extends State<SignInLawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1),
                child: Text('أفوكاتو',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 27,fontWeight: FontWeight.bold),))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInUser()));
                    },
                    child: Row(

                      children: [
                        Text('مستخدم',style: TextStyle(color: mainColor,fontFamily: 'Almarai'),),
                        Radio(
                          value: 1,
                          groupValue: 1,
                          activeColor: mainColor,
                          onChanged: (value){},
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInLawyer()));

                    },
                    child: Row(

                      children: [
                        Text('محامي',style: TextStyle(color: mainColor,fontFamily: 'Almarai'),),
                        Radio(
                          value: 1,
                          groupValue: 1,
                          activeColor: mainColor,
                          onChanged: (value){},
                        )
                      ],
                    ),
                  ),

                ],
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
                    hintText: ' الرقم السري',
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
                  child: Text(' تسجيل دخول',style: TextStyle(color: whiteColor,fontSize: 18),),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)

                  ),
                  onPressed: (){}),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: (){
                 //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));
                  },
                  child: Text('نسيت كلمة المرور؟',style: TextStyle(color: mainColor,fontFamily: 'Almarai'),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpLawyer()));
                  },
                  child: Text(' انشاء حساب',style: TextStyle(color: secondColor,fontFamily: 'Almarai',fontWeight: FontWeight.bold,fontSize: 17),)),
            )
          ],
        ),
      ),
    );
  }
}
