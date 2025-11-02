import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTigaRoute extends StatelessWidget {
  const PageTigaRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Tiga Route"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PAGE TIGA ROUTE"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => PageEmpatRoute());
                Get.toNamed("/page_empat");
              },
              child: Text(">> Page 4"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(builder: (context) => PageSatuRoute()),
                //   (route) => false,
                // );

                // ========== Navigator.pushAndRemoveUntil/pushAndRemoveUntilNamed = Get.offAll/offAllNamed
                // Get.offAll(() => PageSatuRoute());
                Get.offAllNamed("/page_satu");
              },
              child: Text("<< Back to Page 1"),
            ),
          ],
        ),
      ),
    );
  }
}
