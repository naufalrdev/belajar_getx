import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import './pages/home.dart';
import './pages/login.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      title: 'Belajar GetX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: LoginPage(),
      getPages: [
        GetPage(name: "/login", page: () => LoginPage()),
        GetPage(name: "/home", page: () => HomePage()),
      ],
    );
  }
}
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final dependencyC = Get.lazyPut(() => DependencyManageController());
//     return GetMaterialApp(
//       useInheritedMediaQuery: true,
//       debugShowCheckedModeBanner: false,
//       title: 'Belajar GetX',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
//         useMaterial3: true,
//       ),
//       home: BindingsHomeScreen(),
//       // routes: {
//       //   "home": (context) => HomeRouteScreen(),
//       //   "page_satu": (context) => PageSatuRoute(),
//       //   "page_dua": (context) => PageDuaRoute(),
//       //   "page_tiga": (context) => PageTigaRoute(),
//       //   "page_empat": (context) => PageEmpatRoute(),
//       //   "page_lima": (context) => PageLimaRoute(),
//       // },

//       // ========== routes = getPages ==========
//       getPages: [
//         GetPage(name: "/home", page: () => BindingsHomeScreen()),
//         GetPage(
//           name: "/bindings_page_satu",
//           page: () => BindingsPageSatuScreen(),
//           // binding: BindingsBuilder(() {
//           //   Get.put(BindingsBuilderController());
//           // }),
//           binding: BindingsClass(),
//         ),
//         GetPage(name: "/page_satu", page: () => PageSatuRoute()),
//         GetPage(name: "/page_dua", page: () => PageDuaRoute()),
//         GetPage(name: "/page_tiga", page: () => PageTigaRoute()),
//         GetPage(name: "/page_empat", page: () => PageEmpatRoute()),
//         GetPage(name: "/page_lima", page: () => PageLimaRoute()),
//       ],
//     );
//   }
// }

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
