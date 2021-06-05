import 'package:education_app/screens/item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> tabs = [
    TabItem("Home", Colors.black),
    TabItem("Search", Colors.black),
    TabItem("Downloads", Colors.black),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        title: new Text("Education"),
        backgroundColor: Colors.black,
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        onTap: onTabTapped,
        currentIndex: currentIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromRGBO(82, 82, 82, 0.5),
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.download),
            label: "Download",
          ),
        ],
      ),
    );
  }
}
