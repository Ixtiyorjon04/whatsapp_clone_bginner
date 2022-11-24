import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final pages = [Home(), Favourite(), Settings()];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        backgroundColor: Colors.greenAccent,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts_outlined), label: 'Contacts  '),
        ],
      ),
      appBar: AppBar(
        title: Text("Bottom Navigation Widget"),
        centerTitle: true,
      ),
      body: pages[currentIndex],
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favourite',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}
