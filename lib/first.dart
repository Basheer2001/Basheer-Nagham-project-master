import 'dart:convert';
import 'logout.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'registeruser.dart';
import 'local/localControler.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:convert';
import 'choose.dart';
import 'package:http/http.dart' as http;


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Future loginuser(String email,String pass)async{
    print("111");

    print("enaillllll$email");
    var response = await http.post(
        Uri.parse('http://192.168.43.169:8000/api/login'),
        body:<String,String>
        {
          'email':email,
          'password':pass
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
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => choose(),
        ),
      );


    }
    else
    {
      print("sorry");
    }
  }
  var formkey= GlobalKey<FormState>();
  var useremail=TextEditingController();
  var userpassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: logout(),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
              '4'.tr,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView (
            child: Form(
              key:formkey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    cursorColor: Colors.purple,
                    controller: useremail,
                    onChanged:(value){
                      print(value);
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return '10'.tr;
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,

                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Colors.purple,),
                      labelText: '5'.tr,
                      labelStyle: new TextStyle(
                        color: Colors.purple
                      ),
                      focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      ),

                    ) ,
                  ),
                  SizedBox(
                    height: 24,),
                  TextFormField(
                    cursorColor: Colors.purple,
                    controller: userpassword,
                    obscureText: true,
                    onChanged: (value){
                      print(value);
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return '11'.tr;
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.lock,color: Colors.purple,),
                      suffix: Icon(Icons.remove_red_eye),
                      labelText: '6'.tr,
                      labelStyle: new TextStyle(
                          color: Colors.purple
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                    ) ,
                  ),
                  SizedBox(
                    height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('7'.tr,),
                      TextButton(onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                        child: Text('8'.tr,
                        style: TextStyle(
                          color: Colors.purple,
                        ),),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.purple,
                    child: MaterialButton(
                      onPressed: (){
                        if (formkey.currentState!.validate()){
                        }
                        loginuser(useremail.text, userpassword.text);
                      },
                      child: Text(
                        '9'.tr,
                        style: TextStyle(
                          color:   Colors.white,
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