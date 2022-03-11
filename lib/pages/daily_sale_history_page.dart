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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: dailySaleList.length,
              itemBuilder: (context, index) {
                return _getHistoryDailySale(dailySale: dailySaleList[index]);
              },
            ),
          ),
        ),
      ),
    );
  }

  _getHistoryDailySale({required DailySale dailySale}) {
    return Column(
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
                child: Text(
                  dailySale.date,
                  style: const TextStyle(
                    color: kLightColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const ListTile(
                leading: Text(
                  "Restaurant",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: dailySale.incomes.length,
                itemBuilder: (context, index) {
                  return _getHistoryDailySaleIncome(
                      income: dailySale.incomes[index]);
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }

  _getHistoryDailySaleIncome({required Income income}) {
    return ListTile(
      leading: Text(
        income.restaurant,
        style: const TextStyle(
          color: kSoftDarkColor,
        ),
      ),
      trailing: Text(
        income.total,
        style: const TextStyle(
          color: kSoftDarkColor,
        ),
      ),
    );
  }
}
