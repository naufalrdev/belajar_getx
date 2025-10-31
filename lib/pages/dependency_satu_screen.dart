import 'package:belajar_getx/controllers/dependency_manage_controller.dart';
import 'package:belajar_getx/pages/dependency_dua_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DependencySatuScreen extends StatelessWidget {
  const DependencySatuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DependencyManageController dependencyC = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text("Dependency Page Satu"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Text(
                "${dependencyC.data['id']}",
                style: TextStyle(fontSize: 20),
              ),
              title: Text(
                "${dependencyC.data['name']}",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "${dependencyC.data['age']} Years Old",
                style: TextStyle(fontSize: 18),
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DependencyDuaScreen(),
                    ),
                  );
                },
                child: Text("Next Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
