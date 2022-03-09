import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class AppDrawerMenu extends StatelessWidget {
  const AppDrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text(
              "Menu",
              style: TextStyle(
                color: kLightColor,
                fontSize: 32.0,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "Accueil",
              style: kAppDrawerMenuOptionStyle,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            title: const Text(
              "Historique de commande",
              style: kAppDrawerMenuOptionStyle,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/history/order");
            },
          ),
          ListTile(
            title: const Text(
              "Historique de vente journalière",
              style: kAppDrawerMenuOptionStyle,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/history/dailysale");
            },
          ),
        ],
      ),
    );
  }
}
