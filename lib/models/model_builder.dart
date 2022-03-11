import 'package:e_goute_za/models/income.dart';
import 'package:e_goute_za/models/order.dart';

class ModelBuilder {
  static Order buildOrder({required var order}) {
    return Order(
      order["id"],
      order["designation"],
      order["unit_price"],
      order["quantity"],
      order["amount"],
    );
  }

  static Income buildIncome({required var income}) {
    return Income(
      income["id"],
      income["restaurant"],
      income["total"],
    );
  }
}
