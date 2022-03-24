import 'order.dart';

class Command {
  Command(
    this.id,
    this.restaurant,
    this.date,
    this.orders,
  );

  final int id;
  final String restaurant;
  final String date;
  List<Order> orders;

  factory Command.fromJson(Map<String, dynamic> json) {
    return Command(
      json["id"],
      json["restaurant"],
      json["date"],
      json["orders"],
    );
  }
}
