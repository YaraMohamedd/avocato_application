import 'package:flutter/material.dart';
import 'package:avocato_application/constants.dart';

class PayWallet extends StatefulWidget {

  @override
  _PayWalletState createState() => _PayWalletState();
}
class _PayWalletState extends State<PayWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        // title: Text(' عن التطبيق',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
        backgroundColor:Colors.white,
        leading:Icon(Icons.highlight_remove_outlined,color:mainColor,),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 30,top: 111),
            child: Align(
              child: Text(' ادخل رقم الهاتف ',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor),textAlign: TextAlign.right,),alignment: Alignment.topRight,),
          ),
          Container(
            height: 58,
            margin: EdgeInsets.only(top: 30),

            width: 300,
            color: Colors.grey.withOpacity(.1),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: '+02 ',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)


                  )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30,top: 40),
            child: Align(
              child: Text('  تنبيه  ',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: secondColor),textAlign: TextAlign.right,),alignment: Alignment.topRight,),
          ),
          Container(
            margin: EdgeInsets.only(right: 30,top: 40),
            child: Align(
              child: Text('  تاكد من ان الرقم يدعم احدي المحافظ الاتيه  ',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: mainColor),textAlign: TextAlign.right,),alignment: Alignment.topRight,),
          ),
          Container(
            margin: EdgeInsets.only(left: 30,top: 10,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/vodafone.png',height: 100,width: 100,),

              ],
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
    );
  }
}
