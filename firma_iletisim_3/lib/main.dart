import 'package:flutter/material.dart';

void main() {
  runApp( BenimUyg());
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
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Column(
              children: [
               // ignore: prefer_const_constructors
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: const CircleAvatar(
                   radius: 100,
                   backgroundImage: AssetImage("images/kahve.jpg"),
                 ),
                 
               ),
               const SizedBox(
                 height: 25,
               ),
               const Text("Flutter Kahvecisi",
               style: TextStyle(
                 
               ),),
               const SizedBox(
                 height: 25,
               ),
               const Text("Bir Fincan Uzağınızda"),
               /* Transform(//Tranform kullanılarak yapılıotr.
                 transform: Matrix4.rotationZ(-0.2),
                 alignment: FractionalOffset.center,
                 child: const Text("Bir Fincan Uzağınızda")), */
               const SizedBox(
                 height: 25,
               ),
               Container(
                 width: 300,
                 height: 50,
                 color: Colors.brown.shade100,
                 child: const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                     ),
                   ),
                 ),
               ),
               const SizedBox(
                 height: 15,
               ),
               Container(
                 width: 300,
                 height: 50,
                 color: Colors.brown.shade100,
                 child: const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                       )
                     ),
                   ),
                 ),
               ),
               TextButton(onPressed: () {
                 
               }, child: const Text("Sipariş ver", ))
              ],
            ),
          ),
        ),),
    );
  }
}

