import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFD7E0FF),//0XDEN SONRAKİ FF SAYDAMLIKLA İLGİLİDİR. SONRA GELENLER İSE RENGİN HEX DEĞERİDİR.
        appBar: AppBar(
          title: const Text(
            "Mutlu Bayramlar",
          ),
          centerTitle: true, // ortaya alma amaçlı kullanılır.
          backgroundColor:
              Colors.deepPurple.shade100, //materialpaletten alınabilir renkler.
        ),
        body: Center(
            child: Image.asset("Images/mutlu_bayramlar.jpg"),)
            
            /* Image.network(//internetten resim almak için kullanılır.
                "https://im.haberturk.com/2021/07/19/3138886_c73bd47bb096e56cd5e59c199c5c8001_640x640.jpg")), // aşapğıdaki kodun kısaltılmış halidir.*/
        /* Image(
      image: NetworkImage("https://im.haberturk.com/2021/07/19/3138886_c73bd47bb096e56cd5e59c199c5c8001_640x640.jpg"),), */
      ),
    ),
  );
}
