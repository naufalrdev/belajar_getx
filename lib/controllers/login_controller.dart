import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberMe = false.obs;

  void login() async {
    final box = GetStorage();
    if (emailC.text == "admin@gmail.com" && passwordC.text == "admin") {
      if (box.read("dataRememberMe") != null) {
        box.remove("dataRememberMe");
      }
      if (rememberMe.isTrue) {
        // simpan data email & password di local memory hp (SqfLite)
        box.write("dataRememberMe", {
          "email": emailC.text,
          "password": passwordC.text,
        });
      }

      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Email & Password tidak sesuai.",
      );
    }
  }

  void logout() {
    Get.offAllNamed("/login");
  }
}
