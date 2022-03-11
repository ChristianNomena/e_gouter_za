import 'order.dart';

class Command {
  Command(
    this.id,
    this.date,
    this.orders,
  );

  final int id;
  final String date;
  List<Order> orders;

  factory Command.fromJson(Map<String, dynamic> json) {
    return Command(
      json["id"],
      json["date"],
      json["orders"],
    );
  }

  void castOrders() {
    // orders = orders.toList();
  }
}
