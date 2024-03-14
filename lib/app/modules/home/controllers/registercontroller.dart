import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_42/app/routes/app_routes.dart';

class RegisController extends GetxController with StateMixin {
  final TextEditingController fullnameC = TextEditingController();
  final TextEditingController usernameC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  RxBool istampilsandi = true.obs;

  void registerC() {
    String namalengkap = fullnameC.text.trim();
    String user = usernameC.text.trim();
    String gmail = emailC.text.trim();
    String pass = passwordC.text.trim();

    if (namalengkap.isEmpty || user.isEmpty || gmail.isEmpty || pass.isEmpty) {
      Get.snackbar('Eror', 'Semua data harus diisi',
          backgroundColor: Colors.orange, colorText: Colors.white);
    } else {
      change(CircularProgressIndicator(), status: RxStatus.loading());
      Future.delayed(Duration(seconds: 1), () {
        Get.snackbar(
          'Success',
          'Registar successful!',
          backgroundColor: Colors.orange,
          colorText: Colors.white,
        );
        change(null, status: RxStatus.success());
      });
      Get.offAllNamed(routes.login);
    }
  }
}
