import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FalciUygulamasi());
}

class FalciUygulamasi extends StatelessWidget {
  const FalciUygulamasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 139, 93, 146),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 75, 2, 88),
          centerTitle: true,
          title: const Text("GÜNÜN FALI"),
        ),
        body: const OneriGetir(),
      ),
    );
  }
}

class OneriGetir extends StatefulWidget {
  const OneriGetir({
    Key? key,
  }) : super(key: key);

  @override
  State<OneriGetir> createState() => _OneriGetirState();
}

class _OneriGetirState extends State<OneriGetir> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  int textNu = 0;
  String hangisi = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 139, 93, 146),
              radius: 75,
              child: Image.asset("assets/falci.png"),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            color: Colors.white,
            child: ListTile(
              hoverColor: Colors.purple.shade400,
              title: const Text(
                "AŞK DURUMU",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                setState(() {
                  hangisi = "ask";
                  //textNumarasiOlusturma();
                  textNu = Random().nextInt(5) + 1;
                });
              },
              leading: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            color: Colors.white,
            child: ListTile(
              hoverColor: Colors.purple,
              title: const Text(
                "PARA DURUMU",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                setState(() {
                  hangisi = "para";
                  //textNumarasiOlusturma();
                  textNu = Random().nextInt(5) + 6;
                });
              },
              leading: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            color: Colors.white,
            child: ListTile(
              hoverColor: Colors.purple,
              title: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "GÜNLÜK TAVSİYE",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  hangisi = "tavsiye";
                  //textNumarasiOlusturma();
                  textNu = Random().nextInt(5) + 11;
                });
              },
              leading: const Icon(
                Icons.navigation_sharp,
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Text(
              yanitlar[textNu],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

//kendimin geliştimiş olduğu :) nset state aynı kabul ettiği için sadec bir defa çalıştırıyor.
  void textNumarasiOlusturma() {
    while (true) {
      if (hangisi == "ask" && textNu < 6 && textNu > 0) {
        break;
      } else if (hangisi == "para" && textNu < 11 && textNu > 6) {
        break;
      } else if (hangisi == "tavsiye" && textNu < 17 && textNu > 11) {
        break;
      } else {
        textNu = Random().nextInt(16);
        continue;
      }
    }
  }
}
