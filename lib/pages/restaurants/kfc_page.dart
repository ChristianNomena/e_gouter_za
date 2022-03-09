import 'package:flutter/material.dart';

class KfcPage extends StatefulWidget {
  const KfcPage({Key? key}) : super(key: key);

  @override
  _KfcPageState createState() => _KfcPageState();
}

class _KfcPageState extends State<KfcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KFC"),
      ),
    );
  }
}
