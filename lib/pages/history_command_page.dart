import 'package:e_goute_za/components/restaurant_history_command.dart';
import 'package:flutter/material.dart';

class HistoryCommandPage extends StatelessWidget {
  const HistoryCommandPage({
    Key? key,
    required this.appBarTitle,
    required this.restaurantIndex,
  }) : super(key: key);

  final String appBarTitle;
  final int restaurantIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: SafeArea(
        child: RestaurantHistoryCommand(restaurantIndex: restaurantIndex),
      ),
    );
  }
}
