import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Container(
                width: 250,
                height: 250,
                color: Colors.redAccent
            ),
                Container(width: 200, height: 200, color: Colors.greenAccent),
            Positioned(bottom:-20,left:-20,child: Container(width: 150, height: 150, color: Colors.blueAccent)),
          Text('Salom dunyo')
          ],
        ),
      ),
    );
  }
}
