import 'package:e_goute_za/constants.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatefulWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  _SectionTitleState createState() => _SectionTitleState();
}

class _SectionTitleState extends State<SectionTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: kDarkColor,
            fontSize: 24.0,
          ),
        ),
        Text(
          widget.subtitle,
          style: const TextStyle(
            color: kSoftDarkColor,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
