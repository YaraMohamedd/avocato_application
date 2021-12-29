import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class VoiceCallScreen extends StatefulWidget {

  @override
  _VoiceCallScreenState createState() => _VoiceCallScreenState();
}

class _VoiceCallScreenState extends State<VoiceCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(),
            Container(
              margin: EdgeInsets.only(top: 100,left: 100),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/person.jpg'),
              radius: 106,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 350),
                child: Column(
                  children: [
                    Text('نسرين',style: TextStyle(color: secondColor,fontFamily: 'Almarai',fontSize: 25),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('20:12',style: TextStyle(color: Colors.grey,fontFamily: 'Almarai',fontSize: 20),),
                    ),
                    Icon(Icons.call_end_outlined,size: 25,color: mainColor,),

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:   CircleAvatar(

                        radius: 25,

                        backgroundColor: whiteColor,

                        child: Icon(Icons.video_call,size: 25,color: mainColor,),

                      ),
                    ),
                    CircleAvatar(

                      radius: 25,

                      backgroundColor: whiteColor,

                      child: Icon(Icons.message,size: 25,color: mainColor,),

                    ),
                  ],
                )
              ],
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

            ],
          ),
        ),
      ),
    );
  }
}
