import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tugas_42/app/routes/app_routes.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  RxBool istampilsandi = true.obs;

  void login() {
    if (emailC.text == "admin" && passC.text == 'admin') {
      Get.toNamed(routes.home);
    } else {
      Get.snackbar('Eror', 'Email/Password tidak valid',
          backgroundColor: Colors.orange, colorText: Colors.white);
    }
  }
}
