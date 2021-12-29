import 'package:avocato_application/User/sign_in_user.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';
class WorkPage extends StatefulWidget {

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:[
              InkWell(
                onTap:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInUser()));
                },
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                           border: Border.all(color: secondColor,width: 3),

                            borderRadius: BorderRadius.circular(100)
                          ),
                          margin: EdgeInsets.only(top: 70,right: 30),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(Icons.person_add_rounded,color: secondColor,),
                                  Text('انشئ حساب',style: TextStyle(color: whiteColor,fontFamily: 'AlmaraiRegular'),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                   Container(
                     height: 30,
                     width: 30,
                     margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.07,left: MediaQuery.of(context).size.width*.73),
                       child: CircleAvatar(child: Text('1',style: TextStyle(color: whiteColor),),
                         backgroundColor: secondColor,))
                  ],
                ),
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: secondColor,width: 3),

                            borderRadius: BorderRadius.circular(100)
                        ),
                        margin: EdgeInsets.only(top: 50,right: 30,left: 30),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: [
                                Icon(Icons.search,color: secondColor,),
                                Text('ابحث',style: TextStyle(color: whiteColor,fontFamily: 'AlmaraiRegular'),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                      width: 30,
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.04,left: MediaQuery.of(context).size.width*.29),
                      child: CircleAvatar(child: Text('2',style: TextStyle(color: whiteColor),),
                        backgroundColor: secondColor,))
                ],
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: secondColor,width: 3),

                            borderRadius: BorderRadius.circular(100)
                        ),
                        margin: EdgeInsets.only(top: 20,right: 30),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: [
                                Icon(Icons.calendar_today,color: secondColor,),
                                Text('  استشاره',style: TextStyle(color: whiteColor,fontFamily: 'AlmaraiRegular'),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                      width: 30,
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02,left: MediaQuery.of(context).size.width*.74),
                      child: CircleAvatar(child: Text('3',style: TextStyle(color: whiteColor),),
                        backgroundColor: secondColor,))
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 200,
                height: 50,
                child: RaisedButton(
                  color: secondColor,
                  child: Text('تسجيل دخول',style: TextStyle(color: whiteColor,fontSize: 18),),
                  shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)

                  ),
                    onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInUser()));
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 200,
                height: 50,
                child: RaisedButton(
                    color: whiteColor,
                    child: Text(' تخطي',style: TextStyle(color: mainColor,fontSize: 18),),
                    shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)

                    ),
                    onPressed: (){}),
              )

            ],
          ),
        ),
      ),
    );
  }
}
