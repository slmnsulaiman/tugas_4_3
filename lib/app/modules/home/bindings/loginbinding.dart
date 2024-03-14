import 'package:get/get.dart';
import 'package:tugas_42/app/modules/home/controllers/logincontroller.dart';

class LogBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
