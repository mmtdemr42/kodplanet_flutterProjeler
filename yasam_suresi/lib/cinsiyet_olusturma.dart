import 'package:flutter/material.dart';
import 'constants.dart';

class CinsiyetOlusturma extends StatelessWidget {
  String cinsiyet;
  IconData icon;
  CinsiyetOlusturma({Key? key, required this.cinsiyet, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 75,
          color: Colors.grey,
        ),
        Text(
          cinsiyet,
          style:  kMetinStil,
        )
      ],
    );
  }
}
