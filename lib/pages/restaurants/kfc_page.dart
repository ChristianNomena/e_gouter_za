import 'package:e_goute_za/pages/restaurant_page.dart';
import 'package:flutter/material.dart';

class KfcPage extends StatelessWidget {
  const KfcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RestaurantPage(restaurantIndex: 2);
  }
}
