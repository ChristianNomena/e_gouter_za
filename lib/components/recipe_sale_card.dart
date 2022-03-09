import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class RecipeSaleCard extends StatelessWidget {
  const RecipeSaleCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  final AssetImage image;
  final String name;
  final int price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/recipe/sale");
      },
      child: SizedBox(
        width: 200,
        height: 260,
        child: Card(
          elevation: 12.0,
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 150.0,
                padding: const EdgeInsets.all(12.0),
                alignment: Alignment.center,
                child: Image(
                  fit: BoxFit.cover,
                  image: image,
                ),
              ),
              Container(
                height: 40.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 12.0,
                ),
                alignment: Alignment.bottomCenter,
                child: Text(
                  name,
                  style: const TextStyle(
                    color: kDarkColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text("$price Ar"),
                  ),
                  Container(
                    width: 102,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: kThirdColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    child: const Text(
                      "Commander",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
