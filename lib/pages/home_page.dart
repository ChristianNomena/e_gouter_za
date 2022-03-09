import 'package:e_goute_za/components/app_drawer_menu.dart';
import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("e-goute'za"),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        elevation: 8.0,
      ),
      drawer: const AppDrawerMenu(),
      body: const SafeArea(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}