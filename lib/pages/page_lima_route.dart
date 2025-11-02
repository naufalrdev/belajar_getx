import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageLimaRoute extends StatelessWidget {
  const PageLimaRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Lima Route"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PAGE LIMA ROUTE"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("<< Page 4"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Get.offAll(() => HomeRouteScreen());
                Get.offAllNamed("/home");
              },
              child: Text("<< Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
