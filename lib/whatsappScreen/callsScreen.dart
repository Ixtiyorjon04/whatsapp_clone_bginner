import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.call),backgroundColor: Color(0xff075e54),),
      body: Center(
        child: Text(
          "Calls",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}
