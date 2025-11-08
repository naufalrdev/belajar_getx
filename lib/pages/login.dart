import 'package:belajar_getx/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginC = Get.put(LoginController());
    final box = GetStorage();

    if (box.read("dataRememberMe") != null) {
      loginC.rememberMe.value = true;
      loginC.emailC.text = box.read("dataRememberMe")["email"];
      loginC.passwordC.text = box.read("dataRememberMe")["password"];
    }
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: loginC.emailC,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Obx(
                () => TextField(
                  controller: loginC.passwordC,
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  obscureText: loginC.isHidden.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => loginC.isHidden.toggle(),
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Obx(
                () => CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: loginC.rememberMe.value,
                  onChanged: (value) {
                    loginC.rememberMe.toggle();
                  },
                  title: Text("Ingat saya"),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => loginC.login(),
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
