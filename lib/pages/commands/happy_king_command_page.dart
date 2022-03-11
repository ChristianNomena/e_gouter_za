import 'package:e_goute_za/components/restaurant_history_command.dart';
import 'package:flutter/material.dart';

class HappyKingCommandPage extends StatelessWidget {
  const HappyKingCommandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Commandes Happy King"),
      ),
      body: const SafeArea(
        child: RestaurantHistoryCommand(restaurantIndex: 3),
      ),
    );
  }
}
