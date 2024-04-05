import 'package:ecommerceapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  Myservices myservices = Get.find();

  ChangeLang(String langCode) {
    Locale locale = Locale(langCode);

    myservices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? SharedPerfLangue = myservices.sharedPreferences.getString("lang");
    if (SharedPerfLangue == ChangeLang("ar")) {
      language = const Locale("ar");
    } else if (SharedPerfLangue == ChangeLang("en")) {
      language = const Locale("en");
    } else {
      // the app will use the system language of the device by default
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
