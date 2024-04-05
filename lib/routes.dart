import 'package:ecommerceapp/core/constant/Approutes.dart';

import 'package:ecommerceapp/view/screen/auto/login.dart';

import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  //AUTH
  GetPage(name: Approutes.login, page: () => const Login()),
  GetPage(name: Approutes.forgetpassword, page: () => const Login()),
  GetPage(name: Approutes.checkemail, page: () => const Login()),
  GetPage(name: Approutes.verifiecode, page: () => const Login()),
  GetPage(name: Approutes.resetpassword, page: () => const Login()),
  GetPage(name: Approutes.signUp, page: () => const Login()),
  GetPage(name: Approutes.successsignUp, page: () => const Login()),
  GetPage(name: Approutes.signIn, page: () => const Login()),
  GetPage(name: Approutes.secessresetpassword, page: () => const Login()),
  //onboarding
  GetPage(name: Approutes.onboarding, page: () => const Login())
];
  


/*Map<String, Widget Function(BuildContext)> routess = {
  //AUTH
  Approutes.login: (context) => const Login(),
  Approutes.forgetpassword: (context) => const ForgetPassword(),
  Approutes.checkemail: (context) => const CheckEmail(),
  Approutes.verifiecode: (context) => const VerifieCode(),
  Approutes.resetpassword: (context) => const ResetPassword(),
  Approutes.signUp: (context) => const SignUp(),
  Approutes.successsignUp: (context) => const SucessSignUp(),
  Approutes.signIn: (context) => const Login(),
  Approutes.secessresetpassword: (context) => const SucessResetPasword(),
  //onboarding
  Approutes.onboarding: (context) => const OnBoarding(),
};*/
