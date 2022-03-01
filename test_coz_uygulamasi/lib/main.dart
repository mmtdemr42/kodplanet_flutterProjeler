import 'package:flutter/material.dart';
import 'package:test_coz_uygulamasi/constants.dart';
import 'package:test_coz_uygulamasi/test_veri.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SoruSayfasi(),
          ),
        ),
      ),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];

  void butonFonksiyonu(bool deger) {
    if (test_1.testBittiMi() == false) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Tekrar denemek ister misiniz?"),
              content: const Text("Soruların sonuna geldiniz!"),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                  child: const Text("KAPAT"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                      test_1.soruNumarasiDegistir();
                    });
                  },
                  child: const Text("EVET"),
                ),
              ],
            );
          });
      secimler.clear();
    } else {
      setState(() {
        if (test_1.cevapGetir() == deger) {
          secimler.add(kDogruIconu);
        } else {
          secimler.add(kYanlisIconu);
        }
      });
      test_1.soruSayisiDegistir();
    }
  }

  /*
  List sorular = [
    ["Titanic gelmiş geçmiş en büyük gemidir", false],
    ["Dünyadaki tavuk sayısı insan sayısından fazladır", true],
    ["Kelebeklerin ömrü bir gündür", false],
    ["Dünya düzdür", false],
    ["Kaju fıstığı aslında bir meyvenin sapıdır", true],
    ["Fatih Sultan Mehmet hiç patates yememiştir", true],
    ["Fransızlar 80 demek için, 4 - 20 der", true],
    [
      "SONUÇ: \n",
    ]
    #Dizi şeklinde yapmıştık fakat  classlarla çalışma tipini görmek için devamı yapılmıştır.
  ];*/

  TestVeri test_1 = TestVeri();
  //TestVeri test_1 = RandomTestVeri();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                //'${soru + 1}. SORU: \n ${test_1.soruBankasiGoster[soru].soruMetni}',
                '${test_1.soruGetir()}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          spacing: 10, // yatayda elemanlar arası boşluğu sağlar.
          runSpacing: 10, // dikeyde elemanlar arsı boşluğu sağlar
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.red[400],
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.thumb_down,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            butonFonksiyonu(false);
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green[400])),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.thumb_up,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            butonFonksiyonu(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }

  /* Icon dogrulukKontrol(bool dogruluk) { */
  /*   if (dogruluk == false) { */
  /*     return Icon( */
  /*       Icons.mood_bad, */
  /*       color: Colors.red, */
  /*     ); */
  /*   } else { */
  /*     return Icon( */
  /*       Icons.mood, */
  /*       color: Colors.green, */
  /*     ); */
  /*   } */
  /* } */
}
