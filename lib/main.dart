import 'package:belajar_getx/pages/home_route_screen.dart';
import 'package:belajar_getx/pages/page_dua_route.dart';
import 'package:belajar_getx/pages/page_empat_route.dart';
import 'package:belajar_getx/pages/page_lima_route.dart';
import 'package:belajar_getx/pages/page_satu_route.dart';
import 'package:belajar_getx/pages/page_tiga_route.dart';
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
      // routes: {
      //   "home": (context) => HomeRouteScreen(),
      //   "page_satu": (context) => PageSatuRoute(),
      //   "page_dua": (context) => PageDuaRoute(),
      //   "page_tiga": (context) => PageTigaRoute(),
      //   "page_empat": (context) => PageEmpatRoute(),
      //   "page_lima": (context) => PageLimaRoute(),
      // },

      // ========== routes = getPages ==========
      getPages: [
        GetPage(name: "/home", page: () => HomeRouteScreen()),
        GetPage(name: "/page_satu", page: () => PageSatuRoute()),
        GetPage(name: "/page_dua", page: () => PageDuaRoute()),
        GetPage(name: "/page_tiga", page: () => PageTigaRoute()),
        GetPage(name: "/page_empat", page: () => PageEmpatRoute()),
        GetPage(name: "/page_lima", page: () => PageLimaRoute()),
      ],
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
