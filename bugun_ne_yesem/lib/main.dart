import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "BUGÜN NE YESEM?",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: const YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({
    Key? key,
  }) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNu = 1;
  int yemekNu = 1;
  int tatliNu = 1;

  List <String> corbaAdlari = ["Mercimek Çorbası", "Tarhana Çorbası", "TavukSuyu Çorbası", "Düğün Çorbası", "Yoğurt Çorbası" ];
  List <String> yemekAdlari = ["Karnıyarık", "Mantı", "Kuru Fasulye", "İçli Köfte", "Palamut" ];
  List <String> tatliAdlari = ["Kadayıf", "Baklava", "Fırın Sütlaç", "Kazandibi", "Dondorma" ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: ButtonStyle(
                    animationDuration: Duration(seconds: 2),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    overlayColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    setState(() {
                      yemekleriYenile();
                      print(corbaNu);
                    });
                  },
                  child: Image.asset("asset/corba_$corbaNu.jpg")),
            ),
          ),
          Text(
            corbaAdlari[corbaNu - 1],
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              thickness: 3,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    overlayColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    setState(() {
                      yemekleriYenile();
                      print("$yemekNu numaralı yemek seçildi");
                    });
                  },
                  child: Image.asset("asset/yemek_$yemekNu.jpg")),
            ),
          ),
          Text(
            yemekAdlari[yemekNu -1],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              thickness: 3,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    overlayColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    setState(() {
                      yemekleriYenile();
                      print("$tatliNu numaralı tatlı seçildi");
                    });
                  },
                  child: Image.asset("asset/tatli_$tatliNu.jpg")),
            ),
          ),
          Text(
            tatliAdlari[tatliNu-1],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              thickness: 3,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void yemekleriYenile() {
    yemekNu = Random().nextInt(5) + 1;
    tatliNu = Random().nextInt(5) + 1;
    corbaNu = Random().nextInt(5) + 1;
  }
}
