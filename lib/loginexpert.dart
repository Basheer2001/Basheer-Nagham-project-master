import 'package:dupro/ExpertProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logout.dart';
import 'main.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class loginexpert extends StatefulWidget {
  const loginexpert({Key? key}) : super(key: key);

  @override
  State<loginexpert> createState() => _loginexpertState();
}

class _loginexpertState extends State<loginexpert> {
  Future loginexpert(String email,String pass)async{
    print("111");

    print("enaillllll$email");
    var response = await http.post(
        Uri.parse('http://192.168.43.169:8000/api/loginExpert'),
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


    }
    else
    {
      print("sorry");
    }
  }
  var formkey= GlobalKey<FormState>();
  var expertemail=TextEditingController();
  var expertpassword=TextEditingController();
  @override
    Widget build(BuildContext context) {
      return Scaffold(
          drawer: logout(),
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('12'.tr),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      cursorColor: Colors.purple,
                      controller: expertemail,
                      onChanged:(value){
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return '18'.tr;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration:InputDecoration(
                        prefixIcon: Icon(Icons.email,color: Colors.purple,),
                        labelText: '13'.tr,
                        labelStyle: new TextStyle(
                            color: Colors.purple
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                    ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      cursorColor: Colors.purple,
                      controller: expertpassword,
                      obscureText: true,
                      onChanged: (value){
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return '19'.tr;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration:InputDecoration(
                        prefixIcon: Icon(Icons.lock,color: Colors.purple,),
                        suffix: Icon(Icons.remove_red_eye),
                        labelText: '14'.tr,
                        labelStyle: new TextStyle(
                            color: Colors.purple
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                    ),
                    ),
                    SizedBox(
                      height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('15'.tr,

                        ),
                        TextButton(onPressed:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExpertProfile(),
                            ),
                          );
                        } ,child: Text('16'.tr,
                          style: TextStyle(
                              color: Colors.purple

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
                            loginexpert(expertemail.text, expertpassword.text);
                          }
                        },
                        child: Text(
                          '17'.tr,
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


