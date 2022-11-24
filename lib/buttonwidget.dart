import 'package:flutter/material.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Widget'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
        minimumSize: Size(280, 70),
        textStyle: TextStyle(fontSize: 24),
        primary: Colors.orange,
        onPrimary: Colors.black,
    ),
          child: Text('Button Widget')),
            SizedBox(height: 15),
            ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
        minimumSize: Size(280, 70),
        textStyle: TextStyle(fontSize: 24),
        primary: Colors.white,
        onPrimary: Colors.green,
              side: BorderSide(width: 3,color: Colors.blueAccent)

    ),
          child: Text('Button Widget')),
            SizedBox(height: 15),
            Center(child: Icon(Icons.settings,size: 80,))
          ],
        ),
      ),
    );
  }
}
