import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';

class CustomerReview extends StatefulWidget {

  @override
  _CustomerReviewState createState() => _CustomerReviewState();
}

class _CustomerReviewState extends State<CustomerReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('  تقييمات العملاء',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
          backgroundColor: Colors.white,
          leading: Icon(Icons.highlight_remove_outlined,color: mainColor,),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(

                width: 290,
                height: 133,
                decoration: BoxDecoration(
                  color: mainColor,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star,color: Colors.amber,size: 10,),
                                Icon(Icons.star,color: Colors.amber,size: 10,),
                                Icon(Icons.star,color: Colors.amber,size: 10,),
                                Icon(Icons.star,color: Colors.amber,size: 10,),
                                Icon(Icons.star,color: Colors.amber,size: 10,)
                              ],),
                            Text('خدمه ممتازه انصح بها اي شخص',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor))

                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/person.jpg'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('شيرهان',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor)),
                            )
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(

                  width: 290,
                  height: 133,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,)
                                ],),
                              Text('خدمه ممتازه انصح بها اي شخص',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor))

                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/person.jpg'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('شيرهان',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor)),
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(

                  width: 290,
                  height: 133,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,)
                                ],),
                              Text('خدمه ممتازه انصح بها اي شخص',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor))

                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/person.jpg'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('شيرهان',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor)),
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(

                  width: 290,
                  height: 133,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,)
                                ],),
                              Text('خدمه ممتازه انصح بها اي شخص',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor))

                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/person.jpg'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('شيرهان',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor)),
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(

                  width: 290,
                  height: 133,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,)
                                ],),
                              Text('خدمه ممتازه انصح بها اي شخص',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor))

                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/person.jpg'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('شيرهان',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor)),
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(

                  width: 290,
                  height: 133,
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,),
                                  Icon(Icons.star,color: Colors.amber,size: 10,)
                                ],),
                              Text('خدمه ممتازه انصح بها اي شخص',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor))

                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/person.jpg'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('شيرهان',style: TextStyle(fontSize:15,fontFamily: 'Almarai',color: whiteColor)),
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
