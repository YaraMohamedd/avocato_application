import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class ConditionsPage extends StatefulWidget {
  @override
  _ConditionsPageState createState() => _ConditionsPageState();
}

class _ConditionsPageState extends State<ConditionsPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(' الشروط والاحكام ',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: secondColor)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.highlight_remove_outlined,color: mainColor,),
      ),
      body: Column(
        children: [
          Center(child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1),
              child: Text('أفوكاتو',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 27,fontWeight: FontWeight.bold),))),
          Center(child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: ListTile(title: Text('االحمد لله الحمد لله الحمد لله الحمد لله ',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 27,fontWeight: FontWeight.bold),),),

          )),
          Center(child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: ListTile(title: Text('االحمد لله الحمد لله الحمد لله الحمد لله ',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 27,fontWeight: FontWeight.bold),),),

          ))
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
