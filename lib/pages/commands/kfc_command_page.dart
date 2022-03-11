import 'package:e_goute_za/components/restaurant_history_command.dart';
import 'package:flutter/material.dart';

class KfcCommandPage extends StatelessWidget {
  const KfcCommandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Commandes KFC"),
      ),
      body: const SafeArea(
        child: RestaurantHistoryCommand(restaurantIndex: 2),
      ),
    );
  }
}
