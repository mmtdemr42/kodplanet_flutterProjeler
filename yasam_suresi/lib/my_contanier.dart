import 'package:flutter/material.dart';
import 'package:yasam_suresi/input_page.dart';

class MyContanier extends StatelessWidget {
  final Color renk;
  Widget? child;
  final void Function()? onPress;

  MyContanier({this.renk = Colors.white, this.child, this.onPress}) : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        decoration: BoxDecoration(
            color: renk,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        margin: const EdgeInsets.all(12.0),
      ),
    );
  }
}
