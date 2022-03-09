import 'package:e_goute_za/components/history_table_gastro_pizza.dart';
import 'package:e_goute_za/components/restaurant_banner.dart';
import 'package:e_goute_za/components/restaurant_gastro_pizza_recipe_sale_list.dart';
import 'package:e_goute_za/components/section_title.dart';
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
              children: const [
                RestaurantBanner(name: "Gastro Pizza"),
                SizedBox(
                  height: 10.0,
                ),
                SectionTitle(
                  title: "Un petit aperçu de",
                  subtitle: "nos recettes",
                ),
                RestaurantGastroPizzaRecipeSaleList(),
                SizedBox(
                  height: 10.0,
                ),
                SectionTitle(
                  title: "Peut-être aussi",
                  subtitle: "les dernières commandes",
                ),
                SizedBox(
                  height: 12.0,
                ),
                HistoryTableGastroPizza(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
