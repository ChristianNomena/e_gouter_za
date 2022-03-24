import 'package:e_goute_za/components/restaurant_banner.dart';
import 'package:e_goute_za/components/restaurant_food_sale_list.dart';
import 'package:e_goute_za/components/section_title.dart';
import 'package:e_goute_za/components/shop_restaurant.dart';
import 'package:e_goute_za/main.dart';
import 'package:e_goute_za/models/restaurant.dart';
import 'package:e_goute_za/models/shop.dart';
import 'package:e_goute_za/models/food.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key, required this.restaurantIndex})
      : super(key: key);

  final int restaurantIndex;

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  final controller = Get.put(DataController());
  Restaurant restaurant = Restaurant(0, "");

  List<Restaurant> restaurantList = [];
  List<Shop> shopList = [];
  List<Food> foodList = [];

  Future<void> getData() async {
    final data = await controller.data;

    List restaurants = data["restaurants"];
    List shops = restaurants[widget.restaurantIndex]["shops"];
    List foods = restaurants[widget.restaurantIndex]["foods"];

    setState(() {
      restaurantList = restaurants
          .map((restaurant) => Restaurant.fromJson(restaurant))
          .toList();
      shopList = shops.map((shop) => Shop.fromJson(shop)).toList();
      foodList = foods.map((food) => Food.fromJson(food)).toList();

      restaurant = restaurantList[widget.restaurantIndex];
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RestaurantBanner(name: restaurant.name),
                const SizedBox(
                  height: 10.0,
                ),
                const SectionTitle(
                  title: "Un petit aperçu de",
                  subtitle: "nos recettes",
                ),
                RestaurantFoodSaleList(
                  foods: foodList,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const SectionTitle(
                  title: "Peut-être aussi",
                  subtitle: "nos points de vente",
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ShopRestaurant(
                  shops: shopList,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
