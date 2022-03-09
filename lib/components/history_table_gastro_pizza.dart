import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class HistoryTableGastroPizza extends StatelessWidget {
  const HistoryTableGastroPizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(.45),
        1: FractionColumnWidth(.2),
        2: FractionColumnWidth(.125),
        3: FractionColumnWidth(.225),
      },
      children: const [
        TableRow(
          children: [
            Text(
              "Désignation",
              style: TextStyle(fontSize: 16.0),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Prix U",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Qté",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Montant",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              "Frites",
              style: kHistoryTableData,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "3000 AR",
                style: kHistoryTableData,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "3",
                style: kHistoryTableData,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "9000 Ar",
                style: kHistoryTableData,
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              "Pizza Jambon Poulet",
              style: kHistoryTableData,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "25000 AR",
                style: kHistoryTableData,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "5",
                style: kHistoryTableData,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "125000 Ar",
                style: kHistoryTableData,
              ),
            ),
          ],
        )
      ],
    );
  }
}
