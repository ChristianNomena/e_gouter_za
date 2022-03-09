import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class RestaurantBanner extends StatelessWidget {
  const RestaurantBanner({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: kPrimaryColor,
      alignment: Alignment.center,
      child: Text(
        name,
        style: const TextStyle(
          color: kLightColor,
          fontSize: 44.0,
        ),
      ),
    );
  }
}
