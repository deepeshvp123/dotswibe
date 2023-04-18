import 'package:dotswibe/screens/bottembar.dart';
import 'package:dotswibe/screens/listview_builder.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: splash(),
    debugShowCheckedModeBanner: false,
  ));
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/bell.png"))),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello Joseph!",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("Auspo no: AU557373",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500))
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: AssetImage("images/Profile Img.png"))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  GridB(),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          selectedFontSize: 12,
          backgroundColor: Colors.grey[300],
          iconSize: 26,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 14,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/home.png",
                scale: 6,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/customer-support 1.png",
                scale: 6,
              ),
              label: "consultacy List",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/group 1.png",
                scale: 6,
              ),
              label: "Discuss",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/Group 1664.png",
                scale: 6,
              ),
              label: "My Post",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/Group 1669.png",
                scale: 6,
              ),
              label: "Profile",
            ),

           
          ]),
    );
  }
}
