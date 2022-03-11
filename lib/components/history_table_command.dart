import 'package:e_goute_za/constants.dart';
import 'package:e_goute_za/models/order.dart';
import 'package:flutter/material.dart';

class HistoryTableCommand extends StatelessWidget {
  const HistoryTableCommand({
    Key? key,
    required this.orders,
  }) : super(key: key);

  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              flex: 4,
              child: Text(
                "Désignation",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Prix U",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Qté",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Montant",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: orders.length,
          itemBuilder: (context, index) {
            return _getHistoryTableCommandData(order: orders[index]);
          },
        ),
      ],
    );
  }

  _getHistoryTableCommandData({required Order order}) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            order.designation,
            style: kHistoryTableDataStyle,
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "${order.unitPrice} AR",
              style: kHistoryTableDataStyle,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              order.quantity.toString(),
              style: kHistoryTableDataStyle,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "${order.amount} Ar",
              style: kHistoryTableDataStyle,
            ),
          ),
        ),
      ],
    );
  }
}
