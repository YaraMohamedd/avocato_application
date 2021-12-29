import 'package:avocato_application/Repositories/auth_repository.dart';
import 'package:avocato_application/User/forget_password_screen.dart';
import 'package:avocato_application/User/sign_in_user.dart';
import 'package:avocato_application/User/sign_up_user.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class PasswordOtp extends StatefulWidget {
  final String email;
  const PasswordOtp({ required this.email}) ;
  @override
  _PasswordOtpState createState() => _PasswordOtpState();
}

class _PasswordOtpState extends State<PasswordOtp> {
  TextEditingController _codeController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();
  onPressConfirm() async {
    var code = _codeController.text.toString();
    var password = _passwordController.text.toString();
    var password_confirm = _passwordConfirmController.text.toString();
    if (code == "") {
      Fluttertoast.showToast(msg: 'Enter code',gravity: ToastGravity.CENTER);
      return;
    } else if (password == "") {
      Fluttertoast.showToast(msg: 'Enter passsword',gravity: ToastGravity.CENTER);

      return;
    } else if (password_confirm == "") {
      Fluttertoast.showToast(msg: 'confirm your password',gravity: ToastGravity.CENTER);

      return;
    } else if (password.length < 6) {
      Fluttertoast.showToast(msg: 'Password must contain atleast 6 characters',gravity: ToastGravity.CENTER);


      return;
    } else if (password != password_confirm) {
      Fluttertoast.showToast(msg: 'Passwords do not match',gravity: ToastGravity.CENTER);

      return;
    }

    var passwordConfirmResponse =
    await AuthRepository().getPasswordConfirmResponse(code, password);
    if (passwordConfirmResponse.result == false) {
      Fluttertoast.showToast(msg: passwordConfirmResponse.message,gravity: ToastGravity.CENTER);
    } else {
      Fluttertoast.showToast(msg: passwordConfirmResponse.message,gravity: ToastGravity.CENTER);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SignInUser();
      }));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Log in',style: TextStyle(color: Colors.black),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(

          child: Form(child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.009,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text('Continue with email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.1,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: _codeController,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      )
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(20.0),
                child:TextFormField(
                  controller:_passwordController,
                  decoration:InputDecoration(
                      hintText:'Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: _passwordConfirmController,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)

                      )
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));
                      },
                      child: Text('Forget password?',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 16),)),
                  InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SignUpUser()));
                      },
                      child: Text('Create an account',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 16),))
                ],
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                      child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 17),),
                      color: Colors.deepOrange,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                      onPressed: (){
                        onPressConfirm();

                      }),

                ),
              )

            ],
          ),

          ),
        ),
      ),
    );
  }
}
