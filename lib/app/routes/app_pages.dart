import 'package:get/get.dart';
import 'package:tugas_42/app/modules/home/bindings/home_binding.dart';
import 'package:tugas_42/app/modules/home/bindings/loginbinding.dart';
import 'package:tugas_42/app/modules/home/bindings/registerbinding.dart';
import 'package:tugas_42/app/modules/home/views/home_view.dart';
import 'package:tugas_42/app/modules/home/views/loginpage.dart';
import 'package:tugas_42/app/modules/home/views/registerpage.dart';

import './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: routes.home, page: () => HomeView(), binding: HomeBinding()),
    GetPage(name: routes.login, page: () => LoginPage(), binding: LogBinding()),
    GetPage(
      name: routes.register,
      page: () => RegisterPage(),
      binding: RegisBinding(),
    ),
  ];
}
