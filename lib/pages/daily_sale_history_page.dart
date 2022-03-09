import 'package:e_goute_za/components/app_drawer_menu.dart';
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
        title: const Text("e-goute'za"),
      ),
      drawer: const AppDrawerMenu(),
      body: const SafeArea(
        child: Center(
          child: Text("Historique de vente journalière"),
        ),
      ),
    );
  }
}
