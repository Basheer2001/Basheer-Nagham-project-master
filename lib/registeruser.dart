import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'wallet.dart';
import 'logout.dart';
import 'main.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
   class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  Future registeruser(String name,String email,String pass,String conpass)async{
    print("111");

    print("enaillllll$email");
    var response = await http.post(
        Uri.parse('http://192.168.43.169:8000/api/register'),
        body:<String,String>
        {
          'name':name,
          'email':email,
          'password':pass,
          'password_confirmation':conpass
        },

        headers: {"Accept":"application/json",

        }
    );
    print("response is ${response.body}");
    print("response is ${response.statusCode}");
    if(response.statusCode==201)
    {
      var js=jsonDecode(response.body);
      Token=js['token'];


    }
    else
    {
      print("sorry");
    }
  }
  var formkey= GlobalKey<FormState>();
  var username=TextEditingController();
  var useremail=TextEditingController();
  var userpassword=TextEditingController();
  var  userconfirmpassord=TextEditingController();
  @override
  Widget build (BuildContext context) {
    return Scaffold(
        drawer: logout(),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('21'.tr),
        ),
    body : Padding(
      padding: const EdgeInsets.all(20.0),
    child : SingleChildScrollView(
       child: Form(
         key: formkey,
         child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
         children:[
      TextFormField(
        cursorColor: Colors.purple,
        controller: username,
        validator: (value){
          if(value!.isEmpty){
            return '24'.tr;
          }
          return null;
        },
          decoration: InputDecoration(

            labelText: '23'.tr,
            labelStyle: new TextStyle(
                color: Colors.purple
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
          ),
      ),
           SizedBox(
             height: 20.0,
           ),
           TextFormField(
             cursorColor: Colors.purple,
             controller: useremail,
             validator: (value){
               if(value!.isEmpty){
                 return '26'.tr;
               }
               return null;
             },
             decoration: InputDecoration(

                 labelText: '25'.tr,
               labelStyle: new TextStyle(
                   color: Colors.purple
               ),
               focusedBorder: UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.purple),
               ),
             ),
           ),
           SizedBox(
             height: 30.0,
           ),
           TextFormField(
             cursorColor: Colors.purple,
             controller: userpassword,
             validator: (value){
               if(value!.isEmpty){
                 return '28'.tr;
               }
               return null;
             },
             obscureText: true,
             decoration: InputDecoration(

                 labelText: '27'.tr,
               labelStyle: new TextStyle(
                   color: Colors.purple
               ),
               focusedBorder: UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.purple),
               ),
             ),
             keyboardType: TextInputType.visiblePassword,
           ),
           SizedBox(
             height: 30.0,
           ),
           TextFormField(
             cursorColor: Colors.purple,
             controller: userconfirmpassord,
             validator: (value){
               if(value!.isEmpty){
                 return '30'.tr;
               }
               return null;
             },
             obscureText: true,
             decoration: InputDecoration(

                 labelText: '29'.tr,
               labelStyle: new TextStyle(
                   color: Colors.purple
               ),
               focusedBorder: UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.purple),
               ),
             ),
             keyboardType: TextInputType.visiblePassword,
           ),
           SizedBox(
             height: 24,),
           Container(
             width: double.infinity,
             color: Colors.purple,
             child: MaterialButton(
               onPressed: () {
                 if (formkey.currentState!.validate()) {
                   registeruser(username.text,useremail.text,userpassword.text,userconfirmpassord.text);
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => wallet(),

                     ),
                   );
                 }
               },
               child: Text(
                 '31'.tr ,
                 style: TextStyle(
                   color:  Colors.white60  ,
                 ),
               ),
             ),
           ),
         ],
     ),
       ),
    ),
    )
    );
  }
}




