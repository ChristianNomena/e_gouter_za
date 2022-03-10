import 'package:e_goute_za/components/restaurant_banner.dart';
import 'package:e_goute_za/components/restaurant_gastro_pizza_recipe_sale_list.dart';
import 'package:e_goute_za/components/section_title.dart';
import 'package:e_goute_za/components/shop_restaurant.dart';
import 'package:flutter/material.dart';

class HappyKingPage extends StatefulWidget {
  const HappyKingPage({Key? key}) : super(key: key);

  @override
  _HappyKingPageState createState() => _HappyKingPageState();
}

class _HappyKingPageState extends State<HappyKingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Happy King"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                RestaurantBanner(name: "Happy King"),
                SizedBox(
                  height: 10.0,
                ),
                SectionTitle(
                  title: "Un petit aperçu de",
                  subtitle: "nos recettes",
                ),

                // TODO: to change for Happy King
                RestaurantGastroPizzaRecipeSaleList(),

                SizedBox(
                  height: 5.0,
                ),
                SectionTitle(
                  title: "Peut-être aussi",
                  subtitle: "nos points de vente",
                ),
                SizedBox(
                  height: 10.0,
                ),
                ShopRestaurant(
                  shops: [],
                  lastShop: "Behoririka",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
