import 'dart:convert';

import 'package:e_goute_za/components/food_presentation_card.dart';
import 'package:e_goute_za/models/food.dart';
import 'package:e_goute_za/models/model_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FoodPresentationList extends StatefulWidget {
  const FoodPresentationList({Key? key}) : super(key: key);

  @override
  _FoodPresentationListState createState() => _FoodPresentationListState();
}

class _FoodPresentationListState extends State<FoodPresentationList> {
  List<Food> allFoodList = [];

  Future<void> getData() async {
    final String response = await rootBundle.loadString("assets/data.json");
    final data = await json.decode(response);

    List restaurants = data["restaurants"];
    List<Food> foodList = [];

    for (var restaurant in restaurants) {
      var foods = restaurant["foods"];

      for (var food in foods) {
        Food newFood = ModelBuilder.buildFood(food: food);
        foodList.add(newFood);
      }
    }

    foodList.shuffle();

    setState(() {
      allFoodList = foodList;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: SizedBox(
          height: 300.0,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: allFoodList.length,
            itemBuilder: (context, index) {
              return _getFood(food: allFoodList[index]);
            },
          ),
        ),
      ),
    );
  }

  _getFood({required Food food}) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: FoodPresentationCard(
        restaurant: food.restaurant,
        name: food.name,
        image: AssetImage(food.image),
        price: food.price,
      ),
    );
  }
}
