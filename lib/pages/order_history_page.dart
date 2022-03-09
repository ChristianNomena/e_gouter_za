import 'package:e_goute_za/components/app_drawer_menu.dart';
import 'package:flutter/material.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("e-goute'za"),
      ),
      drawer: const AppDrawerMenu(),
      body: const SafeArea(
        child: Center(
          child: Text("Historique de commande"),
        ),
      ),
    );
  }
}
