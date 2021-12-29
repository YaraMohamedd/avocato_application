import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {

  @override
  _WalletScreenState createState() => _WalletScreenState();
}
class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
 return  Scaffold(
   appBar: AppBar(
     elevation: 0,
     centerTitle: true,
     title: Text('محفظتي',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
     backgroundColor: Colors.white,
     leading: Icon(Icons.notifications,color: mainColor,),
   ),
   body: Column(
  children: [
    Center(child: Padding(
      padding: const EdgeInsets.all(70.0),
      child: Text('رصيدي',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),

    )),
    Text('0جنيه',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: secondColor)),
    Padding(
      padding: const EdgeInsets.all(40.0),
      child: Text('لا توجد معاملات ماليه',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: secondColor)),
    ),

  ],
   ),
   bottomNavigationBar: BottomAppBar(
     shape: CircularNotchedRectangle(),
     child: Container(
       width: double.maxFinite,
       height: 70,
       decoration: BoxDecoration(
           color: mainColor,
           borderRadius:
           BorderRadius.vertical(bottom: Radius.circular(15.0))),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           TabItem(
             icon: Icons.filter_list,
             text: '',
             onTap: (){},
             isSelected: true,


           ),
           TabItem(
             icon: Icons.badge,
             text: '',
             onTap: (){},
             isSelected: true,


           ),
           TabItem(
             icon: Icons.print_rounded,
             text: '',
             onTap: (){},
             isSelected: true,


           ),
           TabItem(
             icon: Icons.home,
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
