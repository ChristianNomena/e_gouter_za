import 'package:e_goute_za/models/income.dart';

class DailySale {
  DailySale(
    this.id,
    this.date,
    this.incomes,
  );

  final int id;
  final String date;
  List<Income> incomes;

  factory DailySale.fromJson(Map<String, dynamic> json) {
    return DailySale(
      json["id"],
      json["date"],
      json["incomes"],
    );
  }
}
