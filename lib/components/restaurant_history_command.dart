import 'dart:convert';

import 'package:e_goute_za/components/history_table_command.dart';
import 'package:e_goute_za/constants.dart';
import 'package:e_goute_za/models/command.dart';
import 'package:e_goute_za/models/model_builder.dart';
import 'package:e_goute_za/models/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RestaurantHistoryCommand extends StatefulWidget {
  const RestaurantHistoryCommand({
    Key? key,
    required this.restaurantIndex,
  }) : super(key: key);

  final int restaurantIndex;

  @override
  _RestaurantHistoryCommandState createState() =>
      _RestaurantHistoryCommandState();
}

class _RestaurantHistoryCommandState extends State<RestaurantHistoryCommand> {
  List<Command> commandList = [];

  Future<void> getData() async {
    final String response = await rootBundle.loadString("assets/data.json");
    final data = await json.decode(response);

    List restaurants = data["restaurants"];
    List commands = restaurants[widget.restaurantIndex]["commands"];

    for (var command in commands) {
      List<Order> orderList = [];
      var orders = command["orders"];

      command.remove("orders");

      for (var order in orders) {
        Order newOrder = ModelBuilder.buildOrder(order: order);

        orderList.add(newOrder);
      }

      command["orders"] = orderList;
    }

    setState(() {
      commandList =
          commands.map((command) => Command.fromJson(command)).toList();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getData();
  }

  void updateCommandList() {
    List<Order> orders = [];
    orders.add(Order(1, "Test", 45444, 3, 3534343));
    orders.add(Order(1, "Test", 45444, 3, 3534343));
    orders.add(Order(1, "Test", 45444, 3, 3534343));
  }

  @override
  Widget build(BuildContext context) {
    updateCommandList();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: commandList.length,
          itemBuilder: (context, index) {
            return _getHistoryCommand(command: commandList[index]);
          },
        ),
      ),
    );
  }

  _getHistoryCommand({required Command command}) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 4.0,
          ),
          color: kSecondaryColor,
          child: Text(
            command.date,
            style: const TextStyle(
              color: kLightColor,
              fontSize: 20.0,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        HistoryTableCommand(orders: command.orders),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
