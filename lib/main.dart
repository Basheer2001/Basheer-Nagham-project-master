import 'package:dupro/ExpertProfile.dart';
import 'package:dupro/UorE.dart';
import 'package:dupro/local/local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'UorE.dart';
import 'local/localControler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'experts.dart';
String Token='';
void main()  {
  WidgetsFlutterBinding.ensureInitialized( );
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
late Locale l;
  @override
  Widget build(BuildContext context){
    MyLocaleController controller = Get.put(MyLocaleController());
    return const GetMaterialApp(
      locale: Locale('en') ,
      translations: myLocal(),
      debugShowCheckedModeBanner: false ,
        home:UorE());

  }

}
