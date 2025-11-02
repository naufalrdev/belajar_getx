import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDuaRoute extends StatelessWidget {
  const PageDuaRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Dua Route"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PAGE DUA ROUTE"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => PageTigaRoute());
                Get.toNamed("/page_tiga");
              },
              child: Text(">> Page 3"),
            ),
          ],
        ),
      ),
    );
  }
}
