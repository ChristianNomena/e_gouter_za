import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class CommandGratefulPage extends StatelessWidget {
  const CommandGratefulPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/");
        },
        child: Container(
          color: kPrimaryColor,
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Votre commande a bien été prise en compte",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kLightColor,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Veuillez taper sur l'écran pour continuer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kLightColor,
                    fontSize: 16.0,
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
