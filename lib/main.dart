import 'package:belajar_getx/pages/home_route_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final dependencyC = Get.lazyPut(() => DependencyManageController());
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      title: 'Belajar GetX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: HomeRouteScreen(),
    );
  }
}

// void main() {
//   runApp(
//     DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       useInheritedMediaQuery: true,
//       builder: DevicePreview.appBuilder,
//       locale: DevicePreview.locale(context),
//       debugShowCheckedModeBanner: false,
//       title: 'Rumaia Project',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
//         useMaterial3: true,
//       ),
//       home: ReactiveVariableScreen(),
//     );
//   }
// }
