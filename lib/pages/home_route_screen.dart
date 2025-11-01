import 'package:belajar_getx/pages/page_satu_route.dart';
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

              // ========== Navigator push = Get.to ==========
              Get.to(() => PageSatuRoute());
            },
            child: Text(">> Page 1 (Get.to)"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => PageSatuRoute()),
              // );

              // ========== Navigator pushReplacement = Get.off ==========
              Get.off(() => PageSatuRoute());
            },
            child: Text(">> Page 1 (Get.off)"),
          ),
        ],
      ),
    );
  }
}
