import 'package:e_goute_za/models/shop.dart';
import 'package:flutter/material.dart';

class ShopRestaurant extends StatelessWidget {
  const ShopRestaurant({
    Key? key,
    required this.shops,
  }) : super(key: key);

  final List<Shop> shops;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: shops.length,
        itemBuilder: (context, index) {
          return _getShop(shop: shops[index]);
        },
      ),
    );
  }

  _getShop({required Shop shop}) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.restaurant),
          trailing: Text(shop.location),
        ),
        if (shop.id != shops[shops.length - 1].id) const Divider(),
      ],
    );
  }
}
