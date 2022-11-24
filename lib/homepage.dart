import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var icons = CupertinoIcons.heart;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
          iconSize: 200,
          onPressed: () {
            setState(() {
              icons = CupertinoIcons.heart_fill;
            });
          },
          icon: Icon(
            icons,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
