import 'package:flutter/material.dart';

class ExtraPizzaPage extends StatefulWidget {
  const ExtraPizzaPage({Key? key}) : super(key: key);

  @override
  _ExtraPizzaPageState createState() => _ExtraPizzaPageState();
}

class _ExtraPizzaPageState extends State<ExtraPizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Extra Pizza"),
      ),
    );
  }
}
