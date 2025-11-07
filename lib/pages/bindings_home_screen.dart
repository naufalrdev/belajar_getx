import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BindingsHomeScreen extends StatelessWidget {
  const BindingsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bindings Home"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Bindings Home Screen", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.toNamed("/bindings_page_satu"),
              child: Text(">> Bindings Page 1"),
            ),
          ],
        ),
      ),
    );
  }
}
