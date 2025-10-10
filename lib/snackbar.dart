import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar GETX"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // ScaffoldMessenger.of(
            //   context,
            // ).showSnackBar(SnackBar(content: Text("Ini adalah pesannya")));
            Get.snackbar("HALO", "INI ADALAH PESANNYA");
          },
          child: Text("OPEN SNACKBAR"),
        ),
      ),
    );
  }
}
