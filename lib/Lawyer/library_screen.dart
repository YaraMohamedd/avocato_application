import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('  المكتبه',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: mainColor,),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
   shape: OutlineInputBorder(
     borderSide: BorderSide.none,
     borderRadius: BorderRadius.circular(15)
   ),
                child: Container(
                  height: 100,
                  width: 311,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('جنائي',style: TextStyle(fontSize:14,fontFamily: 'Almarai',color: mainColor)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(Icons.menu_book_sharp,color: secondColor,),
                    )
                  ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  height: 100,
                  width: 311,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('جنائي',style: TextStyle(fontSize:14,fontFamily: 'Almarai',color: mainColor)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.menu_book_sharp,color: secondColor,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  height: 100,
                  width: 311,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('جنائي',style: TextStyle(fontSize:14,fontFamily: 'Almarai',color: mainColor)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.menu_book_sharp,color: secondColor,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  height: 100,
                  width: 311,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('جنائي',style: TextStyle(fontSize:14,fontFamily: 'Almarai',color: mainColor)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.menu_book_sharp,color: secondColor,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
