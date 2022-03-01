import 'dart:math';

import 'package:test_coz_uygulamasi/soru.dart';

class TestVeri {
  int _soruIndex = 0;

  final List<Soru> _soruBankasi = [
    Soru(
        soruMetni: "Titanic gelmiş geçmiş en büyük gemidir", soruYaniti: false),
    Soru(
        soruMetni: "Dünyadaki tavuk sayısı insan sayısından fazladır",
        soruYaniti: true),
    Soru(soruMetni: "Kelebeklerin ömrü bir gündür", soruYaniti: false),
    Soru(soruMetni: "Dünya düzdür", soruYaniti: false),
    Soru(
        soruMetni: "Kaju fıstığı aslında bir meyvenin sapıdır",
        soruYaniti: true),
    Soru(
        soruMetni: "Fatih Sultan Mehmet hiç patates yememiştir",
        soruYaniti: true),
    Soru(soruMetni: "Fransızlar 80 demek için, 4 - 20 der", soruYaniti: true),
  ];
  get soruNumarasiGoster => _soruIndex;
  void soruNumarasiDegistir() => _soruIndex =0;

  get soruBankasiGoster => _soruBankasi;

  //cevap ve  soru için ayrı ayrı olabilir.
  String soruGetir() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool cevapGetir() => _soruBankasi[_soruIndex].soruYaniti;

  void soruSayisiDegistir() {
    if (_soruIndex < _soruBankasi.length - 1) {
      _soruIndex++;
    }
  }

  bool testBittiMi() {
    if (_soruIndex + 1 < _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }
}





/* class RandomTestVeri extends TestVeri { 
   int _soruIndex = Random().nextInt(6); 
   @override 
   void soruSayisiDegistir() { 
     _soruIndex = Random().nextInt(_soruBankasi.length); 
   } 
 } 
  */