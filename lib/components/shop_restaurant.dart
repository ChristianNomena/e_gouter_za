import 'package:flutter/material.dart';

class ShopRestaurant extends StatelessWidget {
  const ShopRestaurant({
    Key? key,
    required this.shops,
    required this.lastShop,
  }) : super(key: key);

  final List<String> shops;
  final String lastShop;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Column(
        children: [
          // _getShops(),
          ListTile(
            leading: const Icon(Icons.restaurant),
            trailing: Text("$lastShop - Antananarivo"),
          ),
        ],
      ),
    );
  }

  _getShops() {
    return shops.map(
      (shop) => {
        ListTile(
          leading: const Icon(Icons.restaurant),
          trailing: Text("$shop - Antananarivo"),
        ),
        const Divider(),
      },
    );
  }
}
