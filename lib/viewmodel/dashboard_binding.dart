import 'package:get/get.dart';
import 'package:rehab_app/viewmodel/my_controller.dart';

import 'page_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    //Get.lazyPut<AccountController>(() => AccountController());
  }
}
