import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DIALOG GETX"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showDialog(
            //   context: context,
            //   builder: (context) {
            //     return AlertDialog(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(16),
            //       ),
            //       title: Text("INI JUDUL"),
            //       content: Text("INI ISI DARI JUDUL TERSEBUT"),
            //     );
            //   },
            // );

            // Get.defaultDialog(title: "INI JUDUL", middleText: "INI ISI");
            Get.dialog(
              Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 120,
                        child: Lottie.asset(
                          "assets/lottie/danger_animasi.json",
                          repeat: false,
                          onLoaded: (composition) {
                            Future.delayed(composition.duration, () {
                              if (Get.isDialogOpen ?? false) {
                                Get.back();
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          child: Text("OPEN DIALOG"),
        ),
      ),
    );
  }
}
