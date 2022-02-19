import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Ekran_Odev());
}

class Ekran_Odev extends StatelessWidget {
  const Ekran_Odev({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100,
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,

              ),
                ],
              ),
               Container(
                height: 100,
                color: Colors.blue,
              ),
            ],
          ) ),
      ),
      
    );
  }
}
