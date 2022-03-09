import 'package:e_goute_za/components/recipe_sale_card.dart';
import 'package:e_goute_za/components/restaurant_banner.dart';
import 'package:e_goute_za/components/section_title.dart';
import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class GastroPizzaPage extends StatefulWidget {
  const GastroPizzaPage({Key? key}) : super(key: key);

  @override
  _GastroPizzaPageState createState() => _GastroPizzaPageState();
}

class _GastroPizzaPageState extends State<GastroPizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gastro Pizza"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RestaurantBanner(name: "Gastro Pizza"),
                const SizedBox(
                  height: 10.0,
                ),
                const SectionTitle(
                  title: "Un petit aperçu de",
                  subtitle: "nos recettes",
                ),
                SingleChildScrollView(
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
                ),
                const SectionTitle(
                  title: "Peut-être aussi",
                  subtitle: "nos dernières commandes",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
