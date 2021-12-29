import 'package:avocato_application/Repositories/auth_repository.dart';
import 'package:avocato_application/User/password_otp.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetPasswordScreen extends StatefulWidget {

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController _emailController = TextEditingController();

  onPressSendCode() async {
    var email = _emailController.text.toString();
    if (email==""){
      Fluttertoast.showToast(msg:'Enter email',gravity: ToastGravity.CENTER);
      return;
    }
    var passwordForgetResponse =await AuthRepository()
        .getPasswordForgetResponse(
        email);
    if(passwordForgetResponse.result == false) {
      Fluttertoast.showToast(msg: passwordForgetResponse.message,gravity: ToastGravity.CENTER);
    } else {
      Fluttertoast.showToast(msg: passwordForgetResponse.message,gravity: ToastGravity.CENTER);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return PasswordOtp(
          email: email,
        );
      }));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text('من فضلك ادخل بريدك الالكتروني',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 20)),

            )),
            Padding(
              padding:const EdgeInsets.only(left: 30,right: 30,top: 40),
              child:TextFormField(
                controller:_emailController,
                textAlign: TextAlign.right,
                decoration:InputDecoration(
                    hintText:'  البريد الالكتروني',
                    suffixIcon:Icon(Icons.email,color: secondColor,)
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.only(top: 30),
              width:200,
              height:50,
              child:RaisedButton(
                  color: mainColor,
                  child: Text('  ارسال',style: TextStyle(color: whiteColor,fontSize: 18),),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius:BorderRadius.circular(15)
                  ),
                  onPressed:(){
                    onPressSendCode();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
