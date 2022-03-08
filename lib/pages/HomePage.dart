import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final data = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("e-goute'za"),
        centerTitle: true,
        elevation: 16.0,
      ),
      body: const SafeArea(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
