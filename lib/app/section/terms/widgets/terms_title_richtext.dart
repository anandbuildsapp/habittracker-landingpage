import 'package:flutter/material.dart';

class TitleRichText extends StatelessWidget {
  final String titleOne;
  final String titleTwo;
  const TitleRichText(
      {required this.titleOne, required this.titleTwo, super.key});
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(
              text: titleOne,
              style: TextStyle(color: Theme.of(context).primaryColor)),
          TextSpan(
              text: ' $titleTwo', style: const TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
