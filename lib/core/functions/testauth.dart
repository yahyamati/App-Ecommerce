import 'package:get/get.dart';

validation(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not Valid Username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "not Valid email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not Valid phone";
    }
  }
  if (val.isEmpty) {
    return "value can't be Empty";
  }

  if (val.length < min) {
    return "value can't be less than $min";
  }
  if (val.length > max) {
    return "value can't be more than $max";
  }
}
