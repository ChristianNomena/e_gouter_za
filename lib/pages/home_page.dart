import 'package:e_goute_za/components/app_drawer_menu.dart';
import 'package:e_goute_za/components/food_presentation_list.dart';
import 'package:e_goute_za/components/restaurant_presentation.dart';
import 'package:e_goute_za/components/section_title.dart';
import 'package:e_goute_za/constants.dart';
import 'package:e_goute_za/pages/restaurant_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
        // actions: const [
        //   Padding(
        //     padding: EdgeInsets.only(right: 16.0),
        //     child: Icon(Icons.search),
        //   ),
        // ],
      ),
      drawer: const AppDrawerMenu(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: AssetImage(
                  "assets/images/presentation_e-goute'za.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SectionTitle(
                      title: "Découvrez nos",
                      subtitle: "restaurants partenaires",
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 416.0,
                      child: PageView(
                        controller: PageController(),
                        children: [
                          RestaurantPresentation(
                            name: "Gastro Pizza",
                            image: const AssetImage(
                              "assets/images/gastro_pizza.jpeg",
                            ),
                            navigation: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RestaurantPage(
                                    restaurantIndex: 0,
                                  ),
                                ),
                              );
                            },
                          ),
                          RestaurantPresentation(
                            name: "Extra Pizza",
                            image: const AssetImage(
                              "assets/images/extra_pizza.jpg",
                            ),
                            navigation: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RestaurantPage(
                                    restaurantIndex: 1,
                                  ),
                                ),
                              );
                            },
                          ),
                          RestaurantPresentation(
                            name: "KFC",
                            image: const AssetImage(
                              "assets/images/kfc.jfif",
                            ),
                            navigation: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RestaurantPage(
                                    restaurantIndex: 2,
                                  ),
                                ),
                              );
                            },
                          ),
                          RestaurantPresentation(
                            name: "Happy King",
                            image: const AssetImage(
                              "assets/images/happy_king.jpg",
                            ),
                            navigation: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RestaurantPage(
                                    restaurantIndex: 3,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Indice : Balayer pour voir les autres restaurants",
                      style: TextStyle(
                        color: kSoftDarkColor,
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    const SectionTitle(
                      title: "Ou bien leurs",
                      subtitle: "meilleures recettes",
                    ),
                    const FoodPresentationList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
