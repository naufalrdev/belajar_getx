import 'package:belajar_getx/controllers/reactive_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateScreen extends StatelessWidget {
  const ReactiveStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reactC = Get.put(ReactiveStateManager());
    return Scaffold(
      appBar: AppBar(
        title: Text("Reactive StateManager GETX"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () =>
                  Text("${reactC.dataPantau}", style: TextStyle(fontSize: 50)),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                reactC.tambahData();
              },
              child: Text("Tambah Data"),
            ),
          ],
        ),
      ),
    );
  }
}
