import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/localization/Translation.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/routes.dart';

import 'package:ecommerceapp/view/screen/auto/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/changelangue.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController()); //الحقن
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: const TextTheme(
              bodyText1: TextStyle(
                  height: 2,
                  color: AppColor.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              headline3: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        ),
        home: const langue(),
        //routes: routes,
        getPages: routes,
        locale: controller.language,
        translations: MyTrans());
  }
}
