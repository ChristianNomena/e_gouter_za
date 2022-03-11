import 'package:e_goute_za/components/recipe_sale_card.dart';
import 'package:e_goute_za/models/food.dart';
import 'package:flutter/material.dart';

class RestaurantFoodSaleList extends StatelessWidget {
  const RestaurantFoodSaleList({
    Key? key,
    required this.foods,
  }) : super(key: key);

  final List<Food> foods;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: SizedBox(
          height: 260.0,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return _getFood(food: foods[index]);
            },
          ),
        ),
      ),
    );
  }

  _getFood({required Food food}) {
    if (food.id == foods[foods.length - 1].id) {
      return RecipeSaleCard(
        restaurant: food.restaurant,
        image: AssetImage(food.image),
        name: food.name,
        price: food.price,
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: RecipeSaleCard(
        restaurant: food.restaurant,
        image: AssetImage(food.image),
        name: food.name,
        price: food.price,
      ),
    );
  }
}
