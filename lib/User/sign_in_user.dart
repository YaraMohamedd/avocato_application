import 'package:avocato_application/Repositories/auth_repository.dart';
import 'package:avocato_application/User/forget_password_screen.dart';
import 'package:avocato_application/User/sign_up_user.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'user_home_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SignInUser extends StatefulWidget {
  @override
  _SignInUserState createState() => _SignInUserState();
}
class _SignInUserState extends State<SignInUser> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  onPressedLogin() async {
    var email = _emailController.text.toString();

    var password = _passwordController.text.toString();
    SharedPreferences preferences= await SharedPreferences.getInstance();
    preferences.setString('email', email);
    preferences.setString('password',password );

    if(email == "") {
      Fluttertoast.showToast(
          msg:'Enter your email', gravity: ToastGravity.CENTER);
      return;
    }
    else if (password == ""){
      Fluttertoast.showToast(
          msg: 'Enter your password', gravity: ToastGravity.CENTER);
      return;
    }
    var loginResponse = await AuthRepository()
        .getLoginResponse(email, password);
    if (loginResponse.result == true) {
      print(loginResponse.message.toString());
      Fluttertoast.showToast(
          msg: loginResponse.message, gravity: ToastGravity.CENTER);
       Navigator.push(context, MaterialPageRoute(builder: (context)=>UserHomePage()));

    } else {
      Fluttertoast.showToast(
          msg: loginResponse.message, gravity: ToastGravity.CENTER);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>UserHomePage()));

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
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
                   Row(
                     children: [
                       Text('مستخدم'),
                       Radio(
                         value: 1,
                         groupValue: 1,
                         activeColor: mainColor,
                         onChanged: (value){},
                       )
                     ],
                   ),
                   Row(

                     children: [
                       Text('محامي'),
                       Radio(
                         value: 1,
                         groupValue: 1,
                         activeColor: mainColor,
                         onChanged: (value){},
                       )
                     ],
                   ),

                 ],
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: TextFormField(
                  controller: _emailController,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'البريد الالكتروني',
                    suffixIcon: Icon(Icons.email,color: secondColor,)
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 30,right: 30,top: 20),
                child: TextFormField(
                  controller: _passwordController,
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
                    child:Text(' تسجيل دخول',style: TextStyle(color: whiteColor,fontSize: 18),),
                    shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)

                    ),
                    onPressed: (){
                      onPressedLogin();
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));
                  },
                    child:Text('نسيت كلمة المرور؟',style: TextStyle(color: mainColor,fontFamily: 'Almarai'),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpUser()));
                  },
                    child: Text(' انشاء حساب',style: TextStyle(color: secondColor,fontFamily: 'Almarai',fontWeight: FontWeight.bold,fontSize: 17),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
