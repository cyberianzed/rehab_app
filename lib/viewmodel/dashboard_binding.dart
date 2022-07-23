import 'package:get/get.dart';

import 'page_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    //Get.lazyPut<AccountController>(() => AccountController());
  }
}
