import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class RecipeSalePage extends StatefulWidget {
  const RecipeSalePage({
    Key? key,
    required this.restaurant,
    required this.name,
    required this.unitPrice,
    required this.image,
    required this.shops,
  }) : super(key: key);

  final String restaurant;
  final String name;
  final int unitPrice;
  final AssetImage image;
  final List shops;

  @override
  _RecipeSalePageState createState() => _RecipeSalePageState();
}

class _RecipeSalePageState extends State<RecipeSalePage> {
  int _quantity = 1;
  String _shopValue = "Mahazo";

  void incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (_quantity > 1) _quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Commande"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.restaurant,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: kThirdColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  widget.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: kSoftDarkColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Quantité",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: decrementQuantity,
                            child: const Text(
                              "-",
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(8.0),
                              backgroundColor:
                                  MaterialStateProperty.all(kSecondaryColor),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          ElevatedButton(
                            onPressed: incrementQuantity,
                            child: const Text(
                              "+",
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(8.0),
                              backgroundColor:
                                  MaterialStateProperty.all(kSecondaryColor),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            _quantity.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Text(
                    "Prix Unitaire",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  trailing: Text(
                    "${widget.unitPrice} Ar",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Text(
                    "Prix Total",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  trailing: Text(
                    "${widget.unitPrice * _quantity} Ar",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Text(
                    "Point de vente",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  trailing: DropdownButton<String>(
                    dropdownColor: kThirdColor,
                    value: _shopValue,
                    onChanged: (String? value) {
                      setState(() {
                        _shopValue = value!;
                      });
                    },
                    items: <String>[
                      'Mahazo',
                      'Analamahitsy',
                      'Talatamaty',
                      'Ivato'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                ListTile(
                  leading: const Text(
                    "Aperçu",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  trailing: Image(
                    image: widget.image,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                    ),
                    elevation: MaterialStateProperty.all(16.0),
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/command/grateful");
                  },
                  child: const Text(
                    "Confirmer la Commande",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
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
