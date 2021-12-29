import 'package:avocato_application/Models/login_response.dart';
import 'package:avocato_application/Models/password_confirm_response.dart';
import 'package:avocato_application/Models/password_forget_response.dart';
import 'package:avocato_application/Models/signup_response.dart';
import 'package:http/http.dart'as http;

class AuthRepository{
  Future<LoginResponse> getLoginResponse(
       String email,  String password) async {
    var post_body = {"email": "${email}", "password": "$password",};
    final response = await http.post(Uri.parse('https://www.softat4you.xyz/api/Auth/login'),
        body: post_body);
    return loginResponseFromJson(response.body);
  }
  Future<SignupResponse> getSignupResponse(
      String email,
      String password,
      String confirm_password,

      )async{
    var post_body ={
      "email": "$email",
      "password": "${password}",
      "retypepassword":"${confirm_password}"
    };
    final response = await http.post(Uri.parse('https://www.softat4you.xyz/api/Auth/register'),
        body: post_body);
    return signupResponseFromJson(response.body);
  }
  Future<PasswordForgetResponse> getPasswordForgetResponse(
      String email) async {
    var post_body =
    {"email": "$email"};
    final response = await http.post(
        Uri.parse('https://www.softat4you.xyz/api/Auth/forgetpassword'),
        body: post_body);
    //print(response.body.toString());
    return passwordForgetResponseFromJson(response.body);
  }
  Future<PasswordConfirmResponse> getPasswordConfirmResponse(
     String otp, String password) async {
    var post_body =
    {"otp": "$otp", "password": "$password"};
    final response = await http.post(
        Uri.parse("https://www.softat4you.xyz/api/Auth/resetpassword") ,
        body: post_body);
    return passwordConfirmResponseFromJson(response.body);
  }
}
