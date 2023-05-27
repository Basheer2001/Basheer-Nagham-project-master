import 'package:dupro/UorE.dart';
import 'package:dupro/local/local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'local/localControler.dart';
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
