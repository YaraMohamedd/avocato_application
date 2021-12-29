import 'package:avocato_application/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddReview extends StatefulWidget {

  @override
  _AddReviewState createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          elevation:0,
          centerTitle:true,
         // title: Text('  ',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
          backgroundColor: Colors.white,
          leading: Icon(Icons.highlight_remove_outlined,color: mainColor,),
        ),
      body: Column(
        children: [
          Center(child: Text('تقييم التطبيق',style: TextStyle(fontSize:30,fontFamily: 'Almarai',color: mainColor))),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star_border_outlined,size: 30,),
                Icon(Icons.star_border_outlined,size: 30,),
                Icon(Icons.star_border_outlined,size:30,),
                Icon(Icons.star_border_outlined,size: 30,),
                Icon(Icons.star_border_outlined,size: 30,)
              ],),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 170,
            width: 300,
            color: Colors.grey.withOpacity(.1),
            child: TextFormField(
              textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'ااضف تقييم',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            width: 237,
            height: 50,
            child: RaisedButton(
                color: mainColor,
                child: Text('   نشر',style: TextStyle(color: whiteColor,fontSize: 18,fontFamily: 'Almarai'),),
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
                ),
                onPressed: (){
                  //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserHomePage()));
                }),
          ),
        ],
      ),
    );
  }
}
