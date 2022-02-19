import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( const BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // Column düşeyde komple yer kaplamak ister bunu engellemek için de bu şekilde kullanabiliriz.
              ///crossAxisAlignment: CrossAxisAlignment.stretch, Cross=> ikincil demek, columda ikicil yatay dmeektir. strech'de yatay boyunca genile anlamaına gelir
              mainAxisAlignment: MainAxisAlignment.center, //yerini ayarlamak amacıyla kullanılır.
              children: [
               const CircleAvatar(
                 radius: 100, // DAirenin büyüklüğü verilir.
                 backgroundImage: AssetImage("images/kahve.jpg"),
               ),
               const SizedBox(
                 height: 25,
               ),
               const Text("Flutter Kahvecisi",
               style: TextStyle(
                 fontFamily: "Satisfy", //Font eklemek için google fontsa git => font dosyasını indir => pubspec.yaml dosyasında font yerine yerleştir.
                 fontSize: 45,
                 color: Color(0xff3e2723),
                  
               ),),
               const SizedBox(
                 height: 5,
               ),
                Text("Bir Fincan Uzağınızda",
               style: GoogleFonts.pacifico(
               textStyle: const TextStyle(
                 color: Colors.white,
                 fontSize: 16,
               ),
               ),
               ),
               Container(
                 width: 200,
                 child: const Divider(
                   height: 30,
                   thickness: 10,
                   color: Colors.black,
                 ),
               ),
               /* Transform(//Tranform kullanılarak yapılıotr.
                 transform: Matrix4.rotationZ(-0.2), // almak zorundadır.
                 alignment: FractionalOffset.center, // konumlandırmaısnın neye göre yapılacağını ifade eder.döndürme yönü gibi.
                 child: const Text("Bir Fincan Uzağınızda")), */
               const SizedBox(
                 height: 25,
               ),
               Card( 
                 margin: const EdgeInsets.symmetric(horizontal: 45),              
                 color: Colors.brown.shade100,
                 child: const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: ListTile(
                     leading: Icon(Icons.email,size: 25,color: Colors.black,),
                    title: Text("mmt.demr42@gmail.com",style: TextStyle(color: Colors.black),),

                   ),
                 ),
               ),
               const SizedBox(
                 height: 15,
               ),
               Card(
                 margin: const EdgeInsets.symmetric(horizontal: 45),
                 color: Colors.brown.shade100,
                 child: const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: ListTile(
                     leading: Icon(Icons.call,size: 25,color: Colors.black,),
                     title: Text("5(...) ... .. ..",style: TextStyle(color: Colors.black),),
                   ),
                 ),
               ),
              
               Padding(
                 padding: const EdgeInsets.only(top: 15),
                 child: TextButton(onPressed: () {
                   
                 }, child:  Text("Sipariş ver",style: GoogleFonts.adamina(
                   textStyle: const TextStyle(
                     color: Colors.black,
                     fontSize: 25
                   )
                 ), )),
               )
              ],
            ),
          ),
        ),),
    );
  }
}

