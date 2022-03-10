import 'package:e_goute_za/models/shop.dart';
import 'package:e_goute_za/models/food.dart';

class Restaurant {
  Restaurant(this.id, this.name);

  final int id;
  final String name;

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      json["id"],
      json["name"],
    );
  }
}
