import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class RecipeSaleCard extends StatelessWidget {
  const RecipeSaleCard({
    Key? key,
    required this.image,
    required this.price,
    required this.isProductNew,
  }) : super(key: key);

  final AssetImage image;
  final int price;
  final bool isProductNew;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/recipe/sale");
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: SizedBox(
          width: 180,
          height: 256,
          child: Card(
            elevation: 12.0,
            shadowColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              children: [
                Container(
                  transform: Matrix4.translationValues(0.0, -40.0, 30.0),
                  alignment: Alignment.center,
                  height: 220,
                  child: Card(
                    elevation: 16.0,
                    child: Image(
                      image: image,
                    ),
                  ),
                ),
                const Positioned.fill(
                  bottom: 42,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Jus de fruit",
                      style: TextStyle(
                        color: kDarkColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                if (isProductNew)
                  const Positioned(
                    top: 20,
                    left: 42,
                    child: Banner(
                      color: kThirdColor,
                      message: "NEW",
                      location: BannerLocation.bottomEnd,
                    ),
                  ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 90,
                    height: 33.0,
                    decoration: const BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "$price Ar",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
