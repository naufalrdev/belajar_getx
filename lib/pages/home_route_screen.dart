import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeRouteScreen extends StatelessWidget {
  const HomeRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Route"), centerTitle: true),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            "HOME ROUTE PAGE",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PageSatuRoute()),
              // );

              // ========== Navigator push/pushNamed = Get.to/toNamed ==========
              // Get.to(() => PageSatuRoute());
              Get.toNamed("/page_satu");
            },
            child: Text(">> Page 1 (Get.to/toNamed)"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => PageSatuRoute()),
              // );

              // ========== Navigator pushReplacement/pushReplacementNamed = Get.off/offNamed ==========
              // Get.off(() => PageSatuRoute());
              Get.offNamed("/page_satu");
            },
            child: Text(">> Page 1 (Get.off/offNamed)"),
          ),
        ],
      ),
    );
  }
}
