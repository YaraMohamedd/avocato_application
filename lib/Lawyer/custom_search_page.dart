import 'package:avocato_application/Lawyer/lawyers_page.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatefulWidget {
  @override
  _CustomSearchState createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          Center(child: Container(
            margin: EdgeInsets.only(top: 37),
              child: Icon(Icons.filter_list,size: 70,color: mainColor,))),
            Text('رتب المحامين حسب السعر',style: TextStyle(fontFamily: 'Almarai',fontSize: 15,color: mainColor),),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 243,
              height: 39,
              child: RaisedButton(

                  color: mainColor,
                  child: Text('  الاعلي سعرا',style: TextStyle(color: whiteColor,fontSize: 12,fontFamily: 'Almarai'),),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)

                  ),
                  onPressed: (){}),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 243,
              height: 39,
              child: RaisedButton(
                  color: Color(0xFFEEEEEE),

                  child: Text('  الاقل سعرا',style: TextStyle(color:mainColor,fontSize: 12,fontFamily: 'Almarai'),),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)

                  ),
                  onPressed: (){}),
            ),
            Container(
                margin: EdgeInsets.only(top: 30),
                child: Text('رتب المحامين حسب التقييم',style: TextStyle(fontFamily: 'Almarai',fontSize: 15,color: mainColor),)),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 243,
              height: 39,
              child: RaisedButton(

                  color: mainColor,
                  child: Text('  الاعلي تقييما',style: TextStyle(color: whiteColor,fontSize: 12,fontFamily: 'Almarai'),),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)

                  ),
                  onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LawyerPage()));
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 243,
              height: 39,
              child: RaisedButton(
                  color: Color(0xFFEEEEEE),

                  child: Text('  الاقل تقييما',style: TextStyle(color:mainColor,fontSize: 12,fontFamily: 'Almarai'),),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)

                  ),
                  onPressed: (){}),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 150,
              height: 39,
              child: RaisedButton(
                  color: mainColor,

                  child: Text('  الاعلي سعرا',style: TextStyle(color:whiteColor,fontSize: 12,fontFamily: 'Almarai'),),
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
