import 'package:e_goute_za/components/app_drawer_menu.dart';
import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String name = "Christian";

  void changeName(String name) {
    setState(() {
      this.name = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A propos"),
      ),
      drawer: const AppDrawerMenu(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(),
            _setTitle("Nom de l'application"),
            _setContent("e-goute'za"),
            const Divider(),
            _setTitle("Module projet"),
            _setContent("INFO_593 & INFO_814"),
            const Divider(),
            _setTitle("Créée par"),
            _setContent("$name RAZAKAMAHERY"),
            const Divider(),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                name == "Christian"
                    ? changeName("Nomena")
                    : changeName("Christian");
              },
              style: ElevatedButton.styleFrom(
                primary: kThirdColor,
                elevation: 16.0,
              ),
              child: const Text(
                "Want to know my another name?",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _setTitle(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: kSoftDarkColor,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _setContent(String content) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: kSoftDarkColor,
        fontSize: 16.0,
      ),
    );
  }
}
