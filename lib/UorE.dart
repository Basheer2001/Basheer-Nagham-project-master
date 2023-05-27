import 'package:dupro/loginexpert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'ExpertProfile.dart';
import 'first.dart';
import 'local/localControler.dart';
class UorE extends StatefulWidget {
  const UorE({Key? key}) : super(key: key);
  @override
  State<UorE> createState() => _UorEState();
}

class _UorEState extends State<UorE> {
  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
            '1'.tr,
        ),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.language),
              itemBuilder:
                  (context) {
                return [
                  PopupMenuItem<int>(value: 0, child: Text('العربية')),
                  PopupMenuItem<int>(value: 1, child: Text('English')),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  controllerLang.changLang('ar');
                }
                if (value == 1) {
                  controllerLang.changLang('en');
                }
              }
          ),
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              color: Colors.purple,
              child: MaterialButton(
                onPressed: (){
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => MyApp(),
                  ),
                  );
                },
                child: Text(
                  '2'.tr,
                  style: TextStyle(

                    color:   Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.purple,
              child: MaterialButton(
                onPressed: (){ Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => loginexpert(),
                  ),
                );
                },
                child: Text(
                  '3'.tr,
                  style: TextStyle(
                    color:   Colors.white,
                  ),
                ),
              ),
            ),
         /*   SizedBox(
              height: 30.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.blueAccent,
              child: MaterialButton(
                onPressed: (){
                  controllerLang.changLang('ar');
                },
                child: Text(
                  'Arabic',
                  style: TextStyle(
                    color:   Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.blueAccent,
              child: MaterialButton(
                onPressed: (){
                  controllerLang.changLang('en');
                },
                child: Text(
                  'English',
                  style: TextStyle(
                    color:   Colors.white,
                  ),
                ),
              ),
            ),*/
          ],
    ),
      )
    );
  }
}
