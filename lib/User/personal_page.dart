import 'dart:convert';

import 'package:avocato_application/Models/profile_model.dart';
import 'package:avocato_application/Widgets/tab_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_value/shared_value.dart';
import 'package:http/http.dart'as http;
import '../constants.dart';

class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}
class _PersonalPageState extends State<PersonalPage> {
   late String token,id;
  SharedValue<String> access_token = SharedValue(
    value: "", // initial value
    key: "access_token", // disk storage key for shared_preferences
    autosave: true, // autosave to shared prefs when value changes
  );
   late Future<ProfileResponse> profileResponse;

  final SharedValue<int> user_id = SharedValue(
    value: 0, // initial value
    key: "user_id", // disk storage key for shared_preferences
    autosave: true, // autosave to shared prefs when value changes
  );
  Future<ProfileResponse> getProfileCountersResponse() async {
   // final response = await http.post( Uri.parse('https://www.softat4you.xyz/api/getuserinfo'),
        Dio dio = Dio();
    var url = "https://www.softat4you.xyz/api/getuserinfo";
    final response=await dio.get(
      url,
      queryParameters: {
        'access_token':access_token.key,
        'user_id': user_id.key,
      },
    );
      // headers: {
      //   "Authorization": "Bearer ${access_token}",
      //
      // },
        var res = ProfileResponse.fromJson(jsonDecode(response.data));
        print(response.data); //value get in response.body
        return res;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // profileResponse=getProfileCountersResponse(access_token, user_id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        // title: Text('استشاراتي',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: mainColor)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.notifications,color: mainColor,),
      ),
      body: FutureBuilder(
        future:getProfileCountersResponse() ,
        builder:(context,AsyncSnapshot<ProfileResponse>snapshot){
          return ListView.builder(
            itemCount: snapshot.data?.userInfo.length,
              itemBuilder: (context,index){
            return Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/person.jpg'),
                  ),
                ),
                Text('اسم المستخدم',style: TextStyle(fontSize:20,fontFamily: 'Almarai',color: secondColor)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 156,
                      width: 306,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(' اسم المستخدم',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                              Text('  الاسم الثاني',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('${snapshot.data?.userInfo[index]}',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                              Text('   البريد الالكتروني',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('  0108765444',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                              Text('   رقم الهاتف',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 104,
                      width: 306,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('  القاهره',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                              Text('العنوان',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('  مهندس',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),
                              Text('    الوظيفه',style: TextStyle(color: mainColor,fontFamily: 'Almarai',fontSize: 14),),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 244,
                  height: 56,
                  child: RaisedButton(

                      color: mainColor,
                      child: Text('  حفظ التغيرات',style: TextStyle(color: secondColor,fontSize: 18,fontFamily: 'Almarai'),),
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)

                      ),
                      onPressed: (){}),
                ),
              ],
            );
          });
        } ,
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
