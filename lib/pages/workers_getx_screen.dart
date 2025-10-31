import 'package:belajar_getx/controllers/workers_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkersGetxScreen extends StatelessWidget {
  const WorkersGetxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workersC = Get.put(WorkersController());
    return Scaffold(
      appBar: AppBar(title: Text("Workers GetX"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Terjadi perubahan: ${workersC.dataPantau}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) => workersC.change(),
                decoration: InputDecoration(
                  labelText: "Masukkan data",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
