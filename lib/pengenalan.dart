import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PengenalanScreen extends StatelessWidget {
  PengenalanScreen({super.key});
  final mycontroller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    print("Di Build Ulang");
    return Scaffold(
      appBar: AppBar(title: Text("Latihan GETX"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                "${mycontroller.data.value}",
                style: TextStyle(fontSize: 60),
              );
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    mycontroller.decrement();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    mycontroller.increment();
                  },
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

class Controller extends GetxController {
  var data = 0.obs;
  increment() {
    data = data + 1;
  }

  decrement() {
    data = data - 1;
  }
}
