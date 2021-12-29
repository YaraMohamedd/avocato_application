import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatefulWidget {

  @override
  _CustomersPageState createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('عملائي',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 20),),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                        SizedBox(height: 10,),
                        Text('منذ 30 دقيقه',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)

                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage:AssetImage('assets/person.jpg')
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                        SizedBox(height: 10,),
                        Text('منذ 30 دقيقه',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)

                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage:AssetImage('assets/person.jpg')
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                        SizedBox(height: 10,),
                        Text('منذ 30 دقيقه',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)

                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage:AssetImage('assets/person.jpg')
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                        SizedBox(height: 10,),
                        Text('منذ 30 دقيقه',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)

                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage:AssetImage('assets/person.jpg')
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                        SizedBox(height: 10,),
                        Text('منذ 30 دقيقه',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)

                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage:AssetImage('assets/person.jpg')
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                        SizedBox(height: 10,),
                        Text('منذ 30 دقيقه',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)

                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage:AssetImage('assets/person.jpg')
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children:[
                        Text('نسرين',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: mainColor),),
                        SizedBox(height: 10,),
                        Text('منذ 30 دقيقه',style: TextStyle(fontSize: 15,fontFamily: 'Almarai',color: Colors.grey),)

                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          backgroundImage:AssetImage('assets/person.jpg')
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
