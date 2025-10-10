import 'package:get/get.dart';

class SimpleStateManager extends GetxController {
  int dataPantau = 0;

  void tambahData() {
    dataPantau = dataPantau + 1;
  }

  void refreshTampilan() {
    update();
  }
}
