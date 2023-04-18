import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottemBar extends StatelessWidget {
   BottemBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
       bottomNavigationBar: BottomNavigationBar(
        

          backgroundColor: Colors.orange,
          iconSize: 26,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          currentIndex: 1,
          selectedFontSize: 20,
          unselectedFontSize: 14,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset("images/home.png",scale: 10,), label: "Home", tooltip: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Search", tooltip: "Search",),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                tooltip: "Settings"),
          ]),
      
    );
  }
}
