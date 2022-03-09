import 'package:e_goute_za/components/recipe_sale_card.dart';
import 'package:flutter/material.dart';

class RestaurantGastroPizzaRecipeSaleList extends StatefulWidget {
  const RestaurantGastroPizzaRecipeSaleList({Key? key}) : super(key: key);

  @override
  _RestaurantGastroPizzaRecipeSaleListState createState() =>
      _RestaurantGastroPizzaRecipeSaleListState();
}

class _RestaurantGastroPizzaRecipeSaleListState
    extends State<RestaurantGastroPizzaRecipeSaleList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: RecipeSaleCard(
                image: AssetImage(
                  "assets/images/gastro_pizza/gastro_pizza_speciale_la_gastronomie_pizza.png",
                ),
                name: "Pizza Spéciale La Gastronomie Pizza",
                price: 30000,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: RecipeSaleCard(
                image: AssetImage(
                  "assets/images/gastro_pizza/gastro_frites.png",
                ),
                name: "Frites",
                price: 25000,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: RecipeSaleCard(
                image: AssetImage(
                  "assets/images/gastro_pizza/gastro_pizza_jambon_poulet.png",
                ),
                name: "Pizza Jambon Poulet",
                price: 25000,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: RecipeSaleCard(
                image: AssetImage(
                  "assets/images/gastro_pizza/gastro_sandwich_kebab.png",
                ),
                name: "Sandwich Kebab",
                price: 26000,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: RecipeSaleCard(
                image: AssetImage(
                  "assets/images/gastro_pizza/gastro_pizza_tralala.png",
                ),
                name: "Pizza Tralala",
                price: 8000,
              ),
            ),
            RecipeSaleCard(
              image: AssetImage(
                "assets/images/gastro_pizza/gastro_pizza_4_fromages.png",
              ),
              name: "Pizza 4 Fromages",
              price: 3000,
            ),
          ],
        ),
      ),
    );
  }
}
