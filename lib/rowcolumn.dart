import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row & Column'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.red,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('First'), Text('Second'), Text('Three')],
        // children: [
        //   // Expanded(child: Text('dasdsadddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'))
        //   // Container(color: Colors.red,width: 75,height: 100),
        //   // Container(color: Colors.black,width: 50,height: 50),
        //   // Container(color: Colors.green,width: 100,height: 80,)
        // ],
        ),
      ),
    );
  }
}
