import 'package:flutter/material.dart';

class ScaffoldTextWidget extends StatelessWidget {
  // const ScaffoldTextWidget({Key? key}) : super(key: key);late
  late final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
          child: Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting in.Lorem ipsum has been the industry',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w900,
          backgroundColor: Colors.green,
          color: Colors.black,
          shadows: [
            BoxShadow(blurRadius: 10,color: Colors.white,offset: Offset(0, 10))
          ]
          // foreground: Paint()
          //   ..style = PaintingStyle.stroke
          //   ..strokeWidth = 2,
        ),
      )),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.red),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ]),
    );
  }
}
