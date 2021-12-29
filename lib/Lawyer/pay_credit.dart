import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class PayCredit extends StatefulWidget {

  @override
  _PayCreditState createState() => _PayCreditState();
}

class _PayCreditState extends State<PayCredit> {
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
      body: Column(
        children: [
          Center(child: Image.asset('assets/credit-card.png',width: 200,height: 125.5,)),
          Form(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Align(
                      child: Text('اسم صاحب البطاقه',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor),textAlign: TextAlign.right,),alignment: Alignment.topRight,),
                ),
                Container(
                  height: 58,
                  margin: EdgeInsets.only(top: 30),

                  width: 300,
                  color: Colors.grey.withOpacity(.1),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'card Holder',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)


                      )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Align(
                    child: Text(' رقم البطاقه ',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor),textAlign: TextAlign.right,),alignment: Alignment.topRight,),
                ),
                Container(
                  height: 58,
                  margin: EdgeInsets.only(top: 30),

                  width: 300,
                  color: Colors.grey.withOpacity(.1),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'xxxxxxxxxxxxxxx ',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)


                        )
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
          )
        ],
      ),
    );
  }
}
