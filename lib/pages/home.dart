import 'package:belajar_getx/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginC = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () => loginC.logout(),
        child: Icon(Icons.logout),
      ),
    );
  }
}
