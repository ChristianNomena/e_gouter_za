import 'package:e_goute_za/components/app_drawer_menu.dart';
import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class DailySaleHistoryPage extends StatefulWidget {
  const DailySaleHistoryPage({Key? key}) : super(key: key);

  @override
  _DailySaleHistoryPageState createState() => _DailySaleHistoryPageState();
}

class _DailySaleHistoryPageState extends State<DailySaleHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historique de vente journalière"),
      ),
      drawer: const AppDrawerMenu(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: const Text(
                    "Gastro Pizza",
                    textAlign: TextAlign.center,
                    style: kCommandHistoryChoiceStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue,
                  child: const Text(
                    "Extra Pizza",
                    textAlign: TextAlign.center,
                    style: kCommandHistoryChoiceStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: const Text(
                    "KFC",
                    textAlign: TextAlign.center,
                    style: kCommandHistoryChoiceStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.amber,
                  child: const Text(
                    "Happy King",
                    textAlign: TextAlign.center,
                    style: kCommandHistoryChoiceStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
