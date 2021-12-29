import 'package:avocato_application/Repositories/auth_repository.dart';
import 'package:avocato_application/User/user_home_page.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SignUpUser extends StatefulWidget {
  @override
  _SignUpUserState createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmationController = TextEditingController();
  onPressSignUp()async{
    var email = _emailController.text.toString();
    var password = _passwordController.text.toString();
    var password_confirm=_passwordConfirmationController.text.toString();
      if (email ==  "") {
      Fluttertoast.showToast(msg: 'Enter your email',gravity: ToastGravity.CENTER);
      return;
    } else if (password == "") {
      Fluttertoast.showToast(msg: 'Enter your password',gravity: ToastGravity.CENTER);
      return;
    }
      else if (password!=password_confirm){
        Fluttertoast.showToast(msg:'Passwords do not match',gravity: ToastGravity.CENTER);
        return;
      }
    var signupResponse = await AuthRepository().getSignupResponse(
          email,
      password,
      password_confirm
        );
    if (signupResponse.result == false) {
      Fluttertoast.showToast(msg: signupResponse.message,gravity: ToastGravity.CENTER);
    }
    //   ToastComponent.showDialog(signupResponse.message, context,
    //       gravity: Toast.LENGTH_LONG, duration: Toast.LENGTH_LONG);
    // }

    else{
      Fluttertoast.showToast(msg:signupResponse.message,gravity: ToastGravity.CENTER);
      // ToastComponent.showDialog(signupResponse.message, context,
      //     gravity: Toast.LENGTH_LONG, duration: Toast.LENGTH_LONG);
      // Navigator.push(context, MaterialPageRoute(builder: (context) {
      //   return HomeScreen(
      //   );
      // }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Column(
         children: [
           Form(
             child: Column(
               children: [
                 Center(child: Container(
                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
                     child: Icon(Icons.person_add,size: 68,color: secondColor,))),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: InkWell(
                       onTap: (){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserHomePage()));
                       },
                       child: Text(' انشاء حساب',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontWeight: FontWeight.bold,fontSize: 17),)),
                 ),
                 Padding(
                   padding:const EdgeInsets.only(left: 30,right: 30),
                   child:TextFormField(
                     controller: _emailController,
                     textAlign: TextAlign.right,
                     decoration: InputDecoration(
                         hintText: 'البريد الالكتروني ',
                         suffixIcon: Icon(Icons.email,color: secondColor,)
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                   child: TextFormField(
                   controller: _passwordController,
                     textAlign: TextAlign.right,
                     decoration: InputDecoration(
                         hintText: '  كلمة المرور',
                         suffixIcon: Icon(Icons.lock,color: secondColor,)
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                   child:TextFormField(
                     controller: _passwordConfirmationController,
                     textAlign: TextAlign.right,
                     decoration: InputDecoration(
                         hintText: 'تاكيد كلمة المرور ',
                         suffixIcon: Icon(Icons.lock,color: secondColor,)
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Text('اوافق علي الشروط والاحكام',style: TextStyle(color: mainColor,fontFamily: 'Almarai'),),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: 30),
                   width: 200,
                   height: 50,
                   child: RaisedButton(

                       color: mainColor,
                       child: Text('  انشاء',style: TextStyle(color: whiteColor,fontSize: 18,fontFamily: 'Almarai'),),
                       shape: OutlineInputBorder(
                           borderSide: BorderSide.none,
                           borderRadius: BorderRadius.circular(15)

                       ),
                       onPressed: (){
                         onPressSignUp();
                       }),
                 ),
               ],
             ),
           )
         ],
       ),
     ),
    );
  }
}
