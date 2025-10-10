import 'package:belajar_getx/controllers/simple_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleStateScreen extends StatelessWidget {
  const SimpleStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final simpleC = Get.put(SimpleStateManager());
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple StateManager GETX"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<SimpleStateManager>(
              builder: (controller) => Text(
                "${controller.dataPantau}",
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                simpleC.tambahData();
              },
              child: Text("Tambah Data"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                simpleC.refreshTampilan();
              },
              child: Text("Refresh UI"),
            ),
          ],
        ),
      ),
    );
  }
}
