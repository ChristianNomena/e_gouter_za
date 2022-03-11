import 'package:e_goute_za/components/app_drawer_menu.dart';
import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class CommandHistoryPage extends StatefulWidget {
  const CommandHistoryPage({Key? key}) : super(key: key);

  @override
  _CommandHistoryPageState createState() => _CommandHistoryPageState();
}

class _CommandHistoryPageState extends State<CommandHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historique de commande"),
      ),
      drawer: const AppDrawerMenu(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/command/gastropizza");
                },
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
                onTap: () {
                  Navigator.pushNamed(context, "/command/extrapizza");
                },
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
                onTap: () {
                  Navigator.pushNamed(context, "/command/kfc");
                },
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
                onTap: () {
                  Navigator.pushNamed(context, "/command/happyking");
                },
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
