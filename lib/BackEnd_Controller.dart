import 'package:get/get.dart';

class BackEnd_Controller extends GetxController {
  var ans = "".obs;
  var user_input = "".obs;
  var final_result = 0.obs;

  void Function(var input) {
    if (input == "AC") {
      ans.value = "";
      user_input.value = "";
    }
    if (input == "C") {
      user_input.value =
          user_input.substring(0, user_input.toString().length - 1);
    }

    if (input == "00") {
      if (user_input.value != "" && user_input.value != "0") {
        user_input.value = user_input.value + "00";
      }
    }

    if (input == "0") {
      if (user_input.value != "" && user_input.value != "0") {
        user_input.value = user_input.value + "0";
      } else {
        user_input.value = "0";
      }
    }
    if (input == ".") {
      if (!user_input.value.contains(".")) {
        user_input.value = user_input.value + ".";
      }
    }
    if (input == "1") {
      user_input.value = user_input.value + "1";
    }
    if (input == "2") {
      user_input.value = user_input.value + "2";
    }
    if (input == "3") {
      user_input.value = user_input.value + "3";
    }
    if (input == "4") {
      user_input.value = user_input.value + "4";
    }
    if (input == "5") {
      user_input.value = user_input.value + "5";
    }
    if (input == "6") {
      user_input.value = user_input.value + "6";
    }
    if (input == "7") {
      user_input.value = user_input.value + "7";
    }
    if (input == "8") {
      user_input.value = user_input.value + "8";
    }
    if (input == "9") {
      user_input.value = user_input.value + "9";
    }
    if (input == "%") {
      double per = double.parse(user_input.value) / 100;
      user_input.value = per.toStringAsFixed(7);
    }
    if (input == "/") {
      if (ans.value != "") {
        double div = double.parse(ans.value) / double.parse(user_input.value);
        ans.value = div.toStringAsFixed(7);
        user_input.value = "";
        final_result.value = 1;
      } else {
        ans.value = user_input.value;
        user_input.value = "";
        final_result.value = 1;
      }
    }
    if (input == "*") {
      if (ans.value != "") {
        double multi = double.parse(ans.value) * double.parse(user_input.value);
        ans.value = multi.toStringAsFixed(7);
        user_input.value = "";
        final_result.value = 2;
      } else {
        ans.value = user_input.value;
        user_input.value = "";
        final_result.value = 2;
      }
    }
    if (input == "-") {
      if (ans.value != "") {
        double sub = double.parse(ans.value) - double.parse(user_input.value);
        ans.value = sub.toStringAsFixed(7);
        user_input.value = "";
        final_result.value = 3;
      } else {
        ans.value = user_input.value;
        user_input.value = "";
        final_result.value = 3;
      }
    }
    if (input == "+") {
      if (ans.value != "") {
        double addition =
            double.parse(ans.value) + double.parse(user_input.value);
        ans.value = addition.toStringAsFixed(7);
        user_input.value = "";
        final_result.value = 4;
      } else {
        ans.value = user_input.value;
        user_input.value = "";
        final_result.value = 4;
      }
    }
    if (input == "=") {
      if (final_result == 1) {
        double div = double.parse(ans.value) / double.parse(user_input.value);
        user_input.value = div.toStringAsFixed(7);
      }
      if (final_result == 2) {
        double multi = double.parse(ans.value) * double.parse(user_input.value);
        user_input.value = multi.toStringAsFixed(7);
      }
      if (final_result == 3) {
        double sub = double.parse(ans.value) - double.parse(user_input.value);
        user_input.value = sub.toString();
      }
      if (final_result == 4) {
        double sum = double.parse(ans.value) + double.parse(user_input.value);
        user_input.value = sum.toString();
      }
    }
  }
}
