import 'package:e_goute_za/models/food.dart';
import 'package:e_goute_za/models/income.dart';
import 'package:e_goute_za/models/order.dart';

class ModelBuilder {
  static Food buildFood({required var food}) {
    return Food(
      food["id"],
      food["name"],
      food["price"],
      food["image"],
      food["restaurant"],
    );
  }

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
