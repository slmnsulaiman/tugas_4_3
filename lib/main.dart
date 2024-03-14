import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tugas_42/app/modules/home/controllers/logincontroller.dart';

import 'package:tugas_42/app/modules/home/views/loginpage.dart';

import 'app/routes/app_pages.dart';

void main() {
  final logC = Get.put(LoginController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: AppPages.pages,
    ),
  );
}
