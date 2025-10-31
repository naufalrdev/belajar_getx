import 'package:get/get.dart';

class WorkersController extends GetxController {
  RxInt dataPantau = 0.obs;

  void change() => dataPantau++;

  @override
  void onInit() {
    // ever(dataPantau, (data) => print("perubahan"));
    // once(dataPantau, (data) => print("1x pantau"));
    // debounce(
    //   dataPantau,
    //   (data) => print("dieksekusi 3 detik setelah berhenti memantau"),
    //   time: Duration(seconds: 3),
    // );
    interval(
      dataPantau,
      (data) => print("dieksekusi 3 detik"),
      time: Duration(seconds: 3),
    );
    super.onInit();
  }
}
