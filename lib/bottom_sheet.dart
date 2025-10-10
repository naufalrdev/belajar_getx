import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BOTTOMSHEET GETX"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showModalBottomSheet(
            //   backgroundColor: Colors.white,
            //   context: context,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            //   ),
            //   builder: (context) {
            //     return Padding(
            //       padding: EdgeInsets.all(20),
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [Text("KONFIRMASI")],
            //       ),
            //     );
            //   },
            // );
            Get.bottomSheet(
              Container(
                height: 300,
                color: Colors.blueAccent,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("INI HOME"),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("INI PROFILE"),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("INI SETTINGS"),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text("OPEN BOTTOMSHEET"),
        ),
      ),
    );
  }
}
