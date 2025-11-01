import 'package:flutter/material.dart';

class PageSatuRoute extends StatelessWidget {
  const PageSatuRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Satu Route"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PAGE SATU ROUTE"),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text(">> Page 2")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text("<< Back to Home")),
          ],
        ),
      ),
    );
  }
}
