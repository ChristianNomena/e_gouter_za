import 'package:flutter/material.dart';

class Restaurant {
  Restaurant(this.id, this.name, this.shops);

  final int id;
  final String name;
  final List<String> shops;

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      json["id"],
      json["name"],
      json["shops"],
    );
  }
}
