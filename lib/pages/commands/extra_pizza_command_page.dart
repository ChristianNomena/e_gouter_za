import 'package:e_goute_za/components/restaurant_history_command.dart';
import 'package:flutter/material.dart';

class ExtraPizzaCommandPage extends StatelessWidget {
  const ExtraPizzaCommandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Commandes Extra Pizza"),
      ),
      body: const SafeArea(
        child: RestaurantHistoryCommand(restaurantIndex: 1),
      ),
    );
  }
}
