import 'dart:convert';
import 'dart:io';
import 'package:dupro/time.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'logout.dart';

import 'package:http/http.dart' as http;
 class ExpertProfile extends StatefulWidget {
@override
_ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ExpertProfile> {
  bool circular = false;
  File? _imageFile; // edits
  final ImagePicker _picker = ImagePicker();
  String Days = '39'.tr;
  String con = '63'.tr;

  var formkey= GlobalKey<FormState>();
  var expertname=TextEditingController();
  var expertemail=TextEditingController();
  var expertpassword=TextEditingController();
  var expertconfirmpassword=TextEditingController();
  var experiences=TextEditingController();
  var address=TextEditingController();
  var number=TextEditingController();

  Future registerexpert(String name, String email,String pass,String conpass,String exp,String add,String num,File image)async{
    var headers = {
      'Accept': 'application/json'
    };
    var request = http.Request('POST', Uri.parse('http://192.168.43.169:8000/api/registerExpert'));
    request.bodyFields = {
      'name':name,
      'email':email,
      'password':pass,
      'password_confirmation':conpass,
      'experiences':exp,
      'address':add,
      'number':num,


    };
    request.headers.addAll(headers);
    // request.files.add(await http.MultipartFile.fromPath('image', image.path));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }

  }
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: logout(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('41'.tr),

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(

          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                imageProfile(),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  cursorColor: Colors.purple,
                  controller: expertname,
                  validator: (value){
                    if(value!.isEmpty){
                      return '24'.tr;
                    }
                    return null;
                  },decoration: InputDecoration(
                    labelText: '32'.tr,
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
                controller: expertemail,
                validator: (value){
                    if(value!.isEmpty){
                      return '26'.tr;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: '33'.tr,
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
                  controller: expertpassword,
                  validator: (value){
                    if(value!.isEmpty){
                      return '28'.tr;
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: '34'.tr,
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
                  controller: expertconfirmpassword,
                  validator: (value){
                    if(value!.isEmpty){
                      return '30'.tr;
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: '35'.tr,
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
                TextFormField(
                  cursorColor: Colors.purple,
                  controller: experiences,
                  validator: (value){
                    if(value!.isEmpty){
                      return '52'.tr;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: '36'.tr,
                    labelStyle: new TextStyle(
                        color: Colors.purple
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  cursorColor: Colors.purple,
                  controller: address,
                  validator: (value){
                    if(value!.isEmpty){
                      return '53'.tr;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: '37'.tr,
                    labelStyle: new TextStyle(
                        color: Colors.purple
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  cursorColor: Colors.purple,
                  controller: number,
                  validator: (value){
                    if(value!.isEmpty){
                      return '54'.tr;
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: '38'.tr,
                    labelStyle: new TextStyle(
                        color: Colors.purple
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  color: Colors.purple,
                  width: double.infinity,
                  height: 40.0,
                  child: PopupMenuButton(
                      child: Center(child: Text('$Days',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ),
                      itemBuilder:
                          (context) {
                        return [
                          PopupMenuItem<int>(value: 0, child: Text('42'.tr)),
                          PopupMenuItem<int>(value: 1, child: Text('43'.tr)),
                          PopupMenuItem<int>(value: 2, child: Text('44'.tr)),
                          PopupMenuItem<int>(value: 3, child: Text('45'.tr)),
                          PopupMenuItem<int>(value: 4, child: Text('46'.tr)),
                          PopupMenuItem<int>(value: 5, child: Text('47'.tr)),
                        ];
                      },
                      onSelected: (value) {
                        if (value == 0) {
                          setState(() {
                            Days = '42'.tr;
                            print(Days);
                          });
                        }
                        if (value == 1) {
                          setState(() {
                            Days = '43'.tr;
                            print(Days);
                          });
                        }
                        if (value == 2) {
                          setState(() {
                            Days = '44'.tr;
                            print(Days);
                          });
                        }
                        if (value == 3) {
                          setState(() {
                            Days = '45'.tr;
                            print(Days);
                          });
                        }
                        if (value == 4) {
                          setState(() {
                            Days = '46'.tr;
                            print(Days);
                          });
                          if (value == 5) {
                            setState(() {
                              Days = '47'.tr;
                              print(Days);
                            });
                          }
                        };
                      }
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  color: Colors.purple,
                  width: double.infinity,
                  height: 40.0,
                  child: PopupMenuButton(
                      child: Center(child: Text('$con',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ),
                      itemBuilder:
                          (context) {
                        return [
                          PopupMenuItem<int>(value: 0, child: Text('58'.tr)),
                          PopupMenuItem<int>(value: 1, child: Text('59'.tr)),
                          PopupMenuItem<int>(value: 2, child: Text('60'.tr)),
                          PopupMenuItem<int>(value: 3, child: Text('61'.tr)),
                          PopupMenuItem<int>(value: 4, child: Text('62'.tr)),
                        ];
                      },
                      onSelected: (value) {
                        if (value == 0) {
                          setState(() {
                            con = '58'.tr;
                            print(con);
                          });
                        }
                        if (value == 1) {
                          setState(() {
                            con = '59'.tr;
                            print(con);
                          });
                        }
                        if (value == 2) {
                          setState(() {
                            con = '60'.tr;
                            print(con);
                          });
                        }
                        if (value == 3) {
                          setState(() {
                            con = '61'.tr;
                            print(con);
                          });
                        }
                        if (value == 4) {
                          setState(() {
                            con= '61'.tr;
                            print(con);
                          });
                        };
                      }
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),

                Container(
                  width: double.infinity,
                  color: Colors.purple,
                  child: MaterialButton(
                    onPressed: (){
                      if (formkey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => time(),
                          ),
                        );

                      }
                      registerexpert(expertname.text, expertemail.text,expertpassword.text,expertconfirmpassword.text,experiences.text,address.text,number.text,image!);
                    },
                    child: Text(
                      '40'.tr ,
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
      ),
    );



      //
    // body: Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           SizedBox(
    //             height: 40,
    //           ),
    //           imageProfile(),
    //
    //
    //
    //         ],
    //       ),
    //     )

  }

  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage: _imageFile == null ? AssetImage("assets/profile.jpg") : FileImage(File(_imageFile!.path)) as ImageProvider,

        ),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

Widget bottomSheet() {
  return Container(
    height: 100.0,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            '51'.tr,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ElevatedButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text('50'.tr),
            ),
            SizedBox(
              width: 40.0,
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text('49'.tr),
            ),
          ])
        ],
      ),
    ),
  );
}
void takePhoto(ImageSource source) async {
  final pickedFile = await _picker.pickImage(
    source: source,
  );
  Uint8List imagebytes = await pickedFile!.readAsBytes();
  String _base64 = base64.encode(imagebytes);
  final imagetemppath = File(pickedFile.path);
  setState(() {
    _imageFile = imagetemppath;
  });
} }
//  Future loginuser(String email,String pass)async{
//     print("111");
// var response = await http.post(
//   Uri.parse('http://192.168.43.192:8000/api/login'),
//   body:<String,String>{
//     'email':email,
//     'password':pass,
//   },
//   headers: {"Accept":"application/json"}
// );
// print("response is ${response.body}");
//     print("response is ${response.statusCode}");
// if(response.statusCode==500)
//    {
//      var js=jsonDecode(response.body);
//      var token=js["7|wKDLDaz2Ug0AY2HF8WRBA6ru1XRssm1sX3f3f5wk"];
//      print('the token is $token');
//
//
//    }
// else
//   {
// print("sorry");
//    }
//   }
