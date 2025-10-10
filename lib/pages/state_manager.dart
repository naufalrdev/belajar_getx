import 'package:belajar_getx/controllers/reactive_state.dart';
import 'package:belajar_getx/controllers/simple_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagerScreen extends StatelessWidget {
  const StateManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reactC = Get.put(ReactiveStateManager());
    final simpleC = Get.put(SimpleStateManager());
    return Scaffold(
      appBar: AppBar(title: Text("StateManager Getx"), centerTitle: true),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Obx(
                  () => Text(
                    "${reactC.dataPantau}",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    reactC.tambahData();
                  },
                  child: Text("Tambah Data"),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    reactC.kurangiData();
                  },
                  child: Text("Kurangi Data"),
                ),
              ],
            ),
            Column(
              children: [
                GetBuilder<SimpleStateManager>(
                  builder: (controller) => Text(
                    "${simpleC.dataPantau}",
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
          ],
        ),
      ),
    );
  }
}
