import 'dart:math';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:yasam_suresi/constants.dart';

import 'cinsiyet_olusturma.dart';
import 'my_contanier.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double _icilenSigara = 0.0;
  double _sporyapilanGun = 0;
  int _boy = 150;
  int _kilo = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: MyContanier(
                        child: RotatedBox(
                          quarterTurns: 135,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "BOY",
                                style: kMetinStil,
                              ),
                              Text(
                                "$_boy",
                                style: kSayiStil,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 4),
                                    ),
                                    child: RotatedBox(
                                      quarterTurns: 45,
                                      child: IconButton(
                                        icon: Icon(Icons.remove),
                                        onPressed: () {
                                          setState(() {
                                            _boy--;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 4),
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        setState(() {
                                          _boy++;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: MyContanier(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "KİLO",
                              style: kMetinStil,
                            ),
                            Text(
                              "$_kilo",
                              style: kSayiStil,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 4),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.remove),
                                    onPressed: () {
                                      setState(() {
                                        _kilo--;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 4),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {
                                        _kilo++;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Expanded(
                  child: MyContanier(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Haftada kaç gün spor yapıyorsunuz?",
                      style: kMetinStil,
                    ),
                    Text(
                      "${_sporyapilanGun.toInt()}",
                      style: kSayiStil,
                    ),
                    Slider(
                        min: 0,
                        max: 7,
                        value: _sporyapilanGun,
                        onChanged: (double deger) {
                          setState(() {
                            _sporyapilanGun = deger;
                          });
                        }),
                  ],
                ),
              )),
              Expanded(
                child: MyContanier(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Günde kaç adet sigara kullanıyorsunuz? ",
                        style: kMetinStil,
                      ),
                      Text(
                        "${_icilenSigara.toInt()}",
                        style: kSayiStil,
                      ),
                      Slider(
                        min: 0,
                        max: 30,
                        value: _icilenSigara,
                        onChanged: (double deger) {
                          _icilenSigara = deger;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(children: <Widget>[
                  Expanded(
                    child: MyContanier(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = "kadın";
                        });
                      },
                      renk:
                          seciliCinsiyet == "kadın" ? Colors.red : Colors.white,
                      child: CinsiyetOlusturma(
                          cinsiyet: "KADIN", icon: Icons.female),
                    ),
                  ),
                  Expanded(
                    child: MyContanier(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = "erkek";
                        });
                      },
                      renk: seciliCinsiyet == "erkek"
                          ? Colors.blueAccent
                          : Colors.white,
                      child: CinsiyetOlusturma(
                        cinsiyet: "ERKEK",
                        icon: Icons.male,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
