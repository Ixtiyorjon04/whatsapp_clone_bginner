import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.star),backgroundColor: Color(0xff075e54),),
      body: Center(
        child: Text(
          "Status",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}
