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
    );
  }
}
