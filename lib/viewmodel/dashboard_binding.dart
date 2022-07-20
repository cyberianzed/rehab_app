import 'package:get/get.dart';
import 'package:rehab_app/viewmodel/home_controller.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    //Get.lazyPut<AccountController>(() => AccountController());
  }
}
