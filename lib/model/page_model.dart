import 'package:get/get.dart';
import '../viewmodel/dashboard_binding.dart';
import '../views/screen/dashboard.dart';

class AppRoutes {
  static const String DASHBOARD = '/';
}

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
