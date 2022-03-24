import 'package:dio/dio.dart';
import 'package:e_goute_za/components/app_drawer_menu.dart';
import 'package:e_goute_za/components/food_presentation_card.dart';
import 'package:e_goute_za/components/food_presentation_list.dart';
import 'package:e_goute_za/components/restaurant_presentation.dart';
import 'package:e_goute_za/components/section_title.dart';
import 'package:e_goute_za/constants.dart';
import 'package:e_goute_za/main.dart';
import 'package:e_goute_za/models/food.dart';
import 'package:e_goute_za/models/model_builder.dart';
import 'package:e_goute_za/pages/restaurant_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(DataController());
  List<Food> allFoodList = [];
  List<Food> filteredFoodList = [];

  Future<void> getData() async {
    final data = await controller.data;

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
      filteredFoodList = foodList;
    });
  }

  final TextEditingController _textFilterController = TextEditingController();
  final dio = Dio();
  String _searchText = "";

  Icon _searchIcon = const Icon(Icons.search);
  Widget _appBarTitle = const Text('Accueil');

  _HomePageState() {
    _textFilterController.addListener(() {
      if (_textFilterController.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredFoodList = allFoodList;
        });
      } else {
        setState(() {
          _searchText = _textFilterController.text;
        });
      }
    });
  }

  void _searchPressed() {
    setState(() {
      if (_searchIcon.icon == Icons.search) {
        _searchIcon = const Icon(Icons.close);
        _appBarTitle = TextField(
          style: const TextStyle(color: kLightColor),
          cursorColor: kLightColor,
          controller: _textFilterController,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: kLightColor,
            ),
            hintText: 'Gouter...',
            hintStyle: TextStyle(color: Colors.white60),
          ),
        );
      } else {
        _searchIcon = const Icon(Icons.search);
        _appBarTitle = const Text('Accueil');
        _textFilterController.clear();
      }
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
        title: _appBarTitle,
        actions: [
          IconButton(
            onPressed: _searchPressed,
            icon: _searchIcon,
          ),
        ],
      ),
      drawer: const AppDrawerMenu(),
      body: SafeArea(
        child: _searchText == "" ? _getHomePage() : _getFilteredFood(),
      ),
    );
  }

  _getHomePage() {
    return SingleChildScrollView(
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
    );
  }

  _getFilteredFood() {
    if (_searchText.isNotEmpty) {
      List<Food> tempFoodList = [];
      for (int i = 0; i < filteredFoodList.length; i++) {
        if (filteredFoodList[i]
            .name
            .toLowerCase()
            .contains(_searchText.toLowerCase())) {
          tempFoodList.add(filteredFoodList[i]);
        }
      }
      filteredFoodList = tempFoodList;
    }

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
            itemCount: filteredFoodList.length,
            itemBuilder: (context, index) {
              return _getFood(food: filteredFoodList[index]);
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
