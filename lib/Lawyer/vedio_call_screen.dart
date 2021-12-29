import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class VedioCallScreen extends StatefulWidget {

  @override
  _VedioCallScreenState createState() => _VedioCallScreenState();
}

class _VedioCallScreenState extends State<VedioCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
Image.asset('assets/person.jpg',width: double.infinity,height: double.infinity,fit: BoxFit.fitHeight,),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 600),
                child: Column(
                  children: [
                    Text('نسرين',style: TextStyle(color: whiteColor,fontFamily: 'Almarai',fontSize: 25),),
                    Text('20:12',style: TextStyle(color: whiteColor,fontFamily: 'Almarai',fontSize: 20),)

                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Padding(
  padding: const EdgeInsets.all(20.0),
  child:   CircleAvatar(

    radius: 25,

    backgroundColor: whiteColor,

    child: Icon(Icons.arrow_back_ios,size: 25,color: mainColor,),

  ),
),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:   CircleAvatar(

                    radius: 25,

                    backgroundColor: whiteColor,

                    child: Icon(Icons.message,size: 25,color: mainColor,),

                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 106,
                width: 106,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15) ),
                    child: Image.asset('assets/person.jpg')),
              ),

            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          width: double.maxFinite,
          height: 70,
          decoration: BoxDecoration(
              color: mainColor,
              borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(10.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabItem(
                icon: Icons.call_end_outlined,
                text: '',
                onTap: (){},
                isSelected: true,


              ),
              TabItem(
                icon: Icons.keyboard_voice_outlined,
                text: '',
                onTap: (){},
                isSelected: true,


              ),
              TabItem(
                icon: Icons.phone,
                text: '',
                onTap: (){},
                isSelected: true,


              ),
              TabItem(
                icon: Icons.video_call,
                text: '',
                onTap: (){},
                isSelected: true,


              )
            ],
          ),
        ),
      ),
    );
  }
}
