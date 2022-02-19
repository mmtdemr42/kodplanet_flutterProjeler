import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Favori Filmim",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
    body: Center(
      child: Image.asset("Images/app_icon_seker.png") ,),
    floatingActionButton: FloatingActionButton(
      autofocus: true,
      focusColor: Colors.amber,
    child: const Text("Ekle"),
    onPressed: () {
      
    },),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined, color: Colors.white,),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.not_interested),
            label: 'Çıkar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'Yorum',
          ),
        ],
      ),


    ),
  ));
}

