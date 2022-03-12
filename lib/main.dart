import 'package:e_goute_za/constants.dart';
import 'package:e_goute_za/pages/command_grateful_page.dart';
import 'package:e_goute_za/pages/commands/extra_pizza_command_page.dart';
import 'package:e_goute_za/pages/commands/gastro_pizza_command_page.dart';
import 'package:e_goute_za/pages/commands/happy_king_command_page.dart';
import 'package:e_goute_za/pages/commands/kfc_command_page.dart';
import 'package:e_goute_za/pages/daily_sale_history_page.dart';
import 'package:e_goute_za/pages/home_page.dart';
import 'package:e_goute_za/pages/command_history_page.dart';
import 'package:e_goute_za/pages/recipe_sale_page.dart';
import 'package:e_goute_za/pages/restaurants/extra_pizza_page.dart';
import 'package:e_goute_za/pages/restaurants/gastro_pizza_page.dart';
import 'package:e_goute_za/pages/restaurants/happy_king_page.dart';
import 'package:e_goute_za/pages/restaurants/kfc_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        "/restaurant/gastropizza": (context) => const GastroPizzaPage(),
        "/restaurant/extrapizza": (context) => const ExtraPizzaPage(),
        "/restaurant/kfc": (context) => const KfcPage(),
        "/restaurant/happyking": (context) => const HappyKingPage(),
        "/command/gastropizza": (context) => const GastroPizzaCommandPage(),
        "/command/extrapizza": (context) => const ExtraPizzaCommandPage(),
        "/command/kfc": (context) => const KfcCommandPage(),
        "/command/happyking": (context) => const HappyKingCommandPage(),
        "/command/grateful": (context) => const CommandGratefulPage(),
      },
    );
  }
}
