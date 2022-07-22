import 'package:get/get.dart';

import '../model/constants.dart';

class MyController extends GetxController {
  int sessionNumber = 0;

  void incSessionNumber() {
    sessionNumber++;
    update();
  }
}

final MyController controller = Get.put(MyController());
