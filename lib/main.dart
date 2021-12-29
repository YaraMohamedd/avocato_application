import 'package:avocato_application/Lawyer/add_review.dart';
import 'package:avocato_application/Lawyer/change_password_lawyer.dart';
import 'package:avocato_application/Lawyer/choose_type_screen.dart';
import 'package:avocato_application/Lawyer/consult_active_page_lawyer.dart';
import 'package:avocato_application/Lawyer/consult_finished_page_lawyer.dart';
import 'package:avocato_application/Lawyer/consult_page_lawyer.dart';
import 'package:avocato_application/Lawyer/consult_page_lawyer2.dart';
import 'package:avocato_application/Lawyer/contact_us_lawyer.dart';
import 'package:avocato_application/Lawyer/custom_search_lawyer.dart';
import 'package:avocato_application/Lawyer/custom_search_page.dart';
import 'package:avocato_application/Lawyer/customer_review.dart';
import 'package:avocato_application/Lawyer/customers_page.dart';
import 'package:avocato_application/Lawyer/edit_profile_page.dart';
import 'package:avocato_application/Lawyer/home_page_lawyer.dart';
import 'package:avocato_application/Lawyer/lawyers_page.dart';
import 'package:avocato_application/Lawyer/library_screen.dart';
import 'package:avocato_application/Lawyer/onsult_screen_lawyer.dart';
import 'package:avocato_application/Lawyer/pay_credit.dart';
import 'package:avocato_application/Lawyer/pay_page.dart';
import 'package:avocato_application/Lawyer/pay_wallet.dart';
import 'package:avocato_application/Lawyer/problem_lawyer.dart';
import 'package:avocato_application/Lawyer/profile_lawyer.dart';
import 'package:avocato_application/Lawyer/request_page.dart';
import 'package:avocato_application/Lawyer/search_page.dart';
import 'package:avocato_application/Lawyer/search_page_lawyer.dart';
import 'package:avocato_application/Lawyer/setting_lawyer.dart';
import 'package:avocato_application/Lawyer/sign_in_lawyer.dart';
import 'package:avocato_application/Lawyer/sign_up_lawyer.dart';
import 'package:avocato_application/Lawyer/vedio_call_screen.dart';
import 'package:avocato_application/Lawyer/voice_call_screen.dart';
import 'package:avocato_application/User/about_screen.dart';
import 'package:avocato_application/User/change_password_screen.dart';
import 'package:avocato_application/User/chat_screen.dart';
import 'package:avocato_application/User/conditions_page.dart';
import 'package:avocato_application/User/consult_active_page.dart';
import 'package:avocato_application/User/consult_finished_page.dart';
import 'package:avocato_application/User/consult_page.dart';
import 'package:avocato_application/User/consult_screen.dart';
import 'package:avocato_application/User/contact_us_screen.dart';
import 'package:avocato_application/User/message_screen.dart';
import 'package:avocato_application/User/notification_page.dart';
import 'package:avocato_application/User/personal_page.dart';
import 'package:avocato_application/User/problem_page.dart';
import 'package:avocato_application/User/setting_screen.dart';
import 'package:avocato_application/User/sign_in_user.dart';
import 'package:avocato_application/User/sign_up_user.dart';
import 'package:avocato_application/User/user_home_page.dart';
import 'package:avocato_application/User/wallet_screen.dart';

import 'Screens/how_it_work_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
          title:'Flutter Demo',
          theme:ThemeData(
          primarySwatch:Colors.blue,
      ),
      home:SignInUser(),
    );
  }
}

