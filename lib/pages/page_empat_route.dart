import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageEmpatRoute extends StatelessWidget {
  const PageEmpatRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Empat Route"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PAGE EMPAT ROUTE"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => PageLimaRoute());
                Get.toNamed("/page_lima");
              },
              child: Text(">> Page 5"),
            ),
          ],
        ),
      ),
    );
  }
}
