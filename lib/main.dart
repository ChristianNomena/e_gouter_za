import 'dart:convert';

import 'package:e_goute_za/constants.dart';
import 'package:e_goute_za/pages/about_page.dart';
import 'package:e_goute_za/pages/command_grateful_page.dart';
import 'package:e_goute_za/pages/daily_sale_history_page.dart';
import 'package:e_goute_za/pages/home_page.dart';
import 'package:e_goute_za/pages/command_history_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class DataController extends GetxController {
  final box = GetStorage();

  Future<Map<String, dynamic>> get data async =>
      box.read("data") ?? await loadData();

  Future<Map<String, dynamic>> loadData() async {
    final String response = await rootBundle.loadString("assets/data.json");
    final data = await json.decode(response);
    return data;
  }

  void changeData(Map<String, dynamic> data) => box.write("data", data);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "e-goute'za",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryColor,
          elevation: 8.0,
          centerTitle: true,
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: kPrimaryColor,
          elevation: 8.0,
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/history/order": (context) => const CommandHistoryPage(),
        "/history/dailysale": (context) => const DailySaleHistoryPage(),
        "/command/grateful": (context) => const CommandGratefulPage(),
        "/about": (context) => const AboutPage(),
      },
    );
  }
}
