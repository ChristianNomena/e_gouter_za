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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  color: kPrimaryColor,
                  alignment: Alignment.center,
                  child: const Text(
                    "Gastro Pizza",
                    style: TextStyle(
                      color: kLightColor,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const SectionTitle(
                  title: "Un petit aperçu de",
                  subtitle: "nos recettes",
                ),
                Row(
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
