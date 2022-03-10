import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class RestaurantPresentation extends StatelessWidget {
  const RestaurantPresentation({
    Key? key,
    required this.name,
    required this.image,
    @required this.navigation,
  }) : super(key: key);

  final String name;
  final AssetImage image;
  final Function()? navigation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigation,
      child: Card(
        elevation: 12.0,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Text(
              name,
              style: const TextStyle(
                color: kThirdColor,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 12.0,
                shadowColor: kThirdColor,
                child: Image(
                  width: double.infinity,
                  height: 250.0,
                  fit: BoxFit.cover,
                  image: image,
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(12.0),
                backgroundColor: MaterialStateProperty.all(
                  kPrimaryColor,
                ),
              ),
              onPressed: navigation,
              child: const Text("Découvrir"),
            ),
          ],
        ),
      ),
    );
  }
}
