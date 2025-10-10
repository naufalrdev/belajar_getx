import 'package:get/get.dart';

class ReactiveStateManager extends GetxController {
  var dataPantau = 0.obs;

  void tambahData() {
    dataPantau = dataPantau + 1;
  }

  void kurangiData() {
    dataPantau = dataPantau - 1;
  }
}
