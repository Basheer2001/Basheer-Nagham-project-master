import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dupro/main.dart';

class MyLocaleController extends GetxController{
  void changLang(String codelang){

    Locale locale = Locale (codelang);
    Get.updateLocale(locale);
  }
  // Future<void> pre(String codelang) async {
  //   SharedPreferences pref = await SharedPreferences.getInstance() ;
  // }


  }