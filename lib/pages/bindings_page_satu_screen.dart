import 'package:belajar_getx/controllers/bindings_builder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BindingsPageSatuScreen extends StatelessWidget {
  const BindingsPageSatuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bindingsC = Get.find<BindingsBuilderController>();
    return Scaffold(
      appBar: AppBar(title: Text("Bindings Page 1"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("${bindingsC.data}", style: TextStyle(fontSize: 30)),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => bindingsC.decrementData(),
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () => bindingsC.incrementData(),
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
