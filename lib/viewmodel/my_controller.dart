import 'package:get/get.dart';
import 'package:rehab_app/model/constants.dart';

class MyController extends GetxController {
  int _sessionNumber = 0;
  int _pendingSession = totalsessions;
  int get sessionNumber => _sessionNumber;
  int get pendingSession => _pendingSession;

  void incSessionNumber() {
    if (_sessionNumber < totalsessions) {
      _sessionNumber++;
      _pendingSession--;
      update();
    }
  }

  String calPercent() {
    return ((mycontroller.sessionNumber / totalsessions) * 100)
        .toStringAsFixed(2);
  }
}

final mycontroller = Get.put(MyController());
