import 'package:get/get.dart';
import 'package:tugas_42/app/modules/home/controllers/registercontroller.dart';

class RegisBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisController());
  }
}
