import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class PayScreen extends StatefulWidget {
  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        children: [
          Center(child: Image.asset('assets/profits.png')),
           Center(child: Container(
             margin: EdgeInsets.only(top: 50),
               child: Text('اشتراك الخطه السنويه',style: TextStyle(color: secondColor,fontSize: 20,fontFamily: 'Almarai'),))),
          Center(child: Container(
              margin: EdgeInsets.only(top:10),
              child: Text('  التكلفه: 1200 جنيه',style: TextStyle(color: mainColor,fontSize: 20,fontFamily: 'Almarai'),))),
          Center(
            child: Container(
              height: 80,
              margin: EdgeInsets.only(top: 50),
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFEEEEEE)
              ),
              child: Column(
                children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                         margin: EdgeInsets.only(left: 30,top: 10),
                         child: Text('1200 جنيه',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),)),
                     Container(
                         margin: EdgeInsets.only(left: 30,top: 10),
                         child: Text(' بطاقة الدفع الالكتروني',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),)),
                     Container(
                         margin: EdgeInsets.only(right: 3,top: 10),
                         child: Icon(Icons.credit_card,color: mainColor,))
                   ],
                 ),
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 10,right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/credit-card-payment.png'),
                        SizedBox(width: 10,),
                        Image.asset('assets/visa.png'),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 80,
              margin: EdgeInsets.only(top: 50),
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFEEEEEE)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 30,top: 10),
                          child: Text('0',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),)),
                      Container(
                          margin: EdgeInsets.only(left: 30,top: 10),
                          child: Text('   المحفظه الالكترونيه',style: TextStyle(color: mainColor,fontSize: 15,fontFamily: 'Almarai'),)),
                      Container(
                          margin: EdgeInsets.only(right: 3,top: 10),
                          child: Icon(Icons.credit_card,color: mainColor,))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 10,right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/vodafone.png',height: 20,width: 20,),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 234,
            height: 52,
            child: RaisedButton(

                color: mainColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('  ادفع الان',style: TextStyle(color: whiteColor,fontSize: 12,fontFamily: 'Almarai'),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('   التكلفه الماليه',style: TextStyle(color: whiteColor,fontSize: 12,fontFamily: 'Almarai'),),
                          Text('    1200 جنيه',style: TextStyle(color: whiteColor,fontSize: 12,fontFamily: 'Almarai'),),

                        ],
                      ),
                    ),

                  ],
                ),
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)

                ),
                onPressed: (){}),
          ),

        ],
        ),
      ),
    );
  }
}
