import 'package:belajar_getx/controllers/dependency_manage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DependencyDuaScreen extends StatelessWidget {
  const DependencyDuaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DependencyManageController dependencyDuaC = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text("Dependency Page Satu"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Text(
                "${dependencyDuaC.data2['id']}",
                style: TextStyle(fontSize: 20),
              ),
              title: Text(
                "${dependencyDuaC.data2['name']}",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "${dependencyDuaC.data2['age']} Years Old",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
