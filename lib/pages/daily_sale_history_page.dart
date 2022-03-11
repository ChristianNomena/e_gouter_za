import 'dart:convert';

import 'package:e_goute_za/components/app_drawer_menu.dart';
import 'package:e_goute_za/constants.dart';
import 'package:e_goute_za/models/daily_sale.dart';
import 'package:e_goute_za/models/income.dart';
import 'package:e_goute_za/models/model_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DailySaleHistoryPage extends StatefulWidget {
  const DailySaleHistoryPage({Key? key}) : super(key: key);

  @override
  _DailySaleHistoryPageState createState() => _DailySaleHistoryPageState();
}

class _DailySaleHistoryPageState extends State<DailySaleHistoryPage> {
  List<DailySale> dailySaleList = [];

  Future<void> getData() async {
    final String response = await rootBundle.loadString("assets/data.json");
    final data = await json.decode(response);

    List dailySales = data["daily_sales"];

    for (var dailySale in dailySales) {
      List<Income> incomeList = [];
      var incomes = dailySale["incomes"];

      dailySale.remove("incomes");

      for (var income in incomes) {
        Income newIncome = ModelBuilder.buildIncome(income: income);

        incomeList.add(newIncome);
      }

      dailySale["incomes"] = incomeList;
    }

    setState(() {
      dailySaleList =
          dailySales.map((dailySale) => DailySale.fromJson(dailySale)).toList();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historique de vente journalière"),
      ),
      drawer: const AppDrawerMenu(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                elevation: 12.0,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40.0,
                      color: kThirdColor,
                      alignment: Alignment.center,
                      child: const Text(
                        "10 mars 2022",
                        style: TextStyle(
                          color: kLightColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Text("Happy King"),
                      trailing: Text("50 000 Ar"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 12.0,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40.0,
                      color: kThirdColor,
                      alignment: Alignment.center,
                      child: const Text(
                        "10 mars 2022",
                        style: TextStyle(
                          color: kLightColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Text("Happy King"),
                      trailing: Text("50 000 Ar"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
