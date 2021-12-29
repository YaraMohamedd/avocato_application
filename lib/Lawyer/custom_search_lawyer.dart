import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class CustomSearchLawyer extends StatefulWidget {

  @override
  _CustomSearchLawyerState createState() => _CustomSearchLawyerState();
}

class _CustomSearchLawyerState extends State<CustomSearchLawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Container(
                margin: EdgeInsets.only(top: 37),
                child: Icon(Icons.filter_list,size: 70,color: mainColor,))),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 243,
              height: 50,
              child: RaisedButton(

                  color: mainColor,
                  child: Text('   محامي',style: TextStyle(color: whiteColor,fontSize: 12,fontFamily: 'Almarai'),),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)

                  ),
                  onPressed: (){}),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 243,
              height: 50,
              child: RaisedButton(
                  color: secondColor,

                  child: Text('   عميل',style: TextStyle(color:mainColor,fontSize: 12,fontFamily: 'Almarai'),),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)

                  ),
                  onPressed: (){}),
            ),

            Container(
              margin: EdgeInsets.only(top: 30),
              width: 243,
              height: 50,
              child: RaisedButton(

                  color: mainColor,
                  child: Text('   ابحث',style: TextStyle(color: whiteColor,fontSize: 12,fontFamily: 'Almarai'),),
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
