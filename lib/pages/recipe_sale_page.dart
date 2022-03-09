import 'package:flutter/material.dart';

class RecipeSalePage extends StatefulWidget {
  const RecipeSalePage({Key? key}) : super(key: key);

  @override
  _RecipeSalePageState createState() => _RecipeSalePageState();
}

class _RecipeSalePageState extends State<RecipeSalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Commande"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            "Tsy misy commande mande zany eo eh",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
