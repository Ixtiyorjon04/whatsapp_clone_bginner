import 'package:flutter/material.dart';

class DeviceRootWidget extends StatelessWidget {
  const DeviceRootWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPortrait =MediaQuery.of(context).orientation ==Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: Text('flexible device'),
      ),
      body: isPortrait
          ?Container(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.6,
              color: Colors.blue,
              margin: EdgeInsets.all(20),
            ),
            Container(
              height: size.height * 0.15,
              color: Colors.blue,
              margin: EdgeInsets.all(20),
            )
          ],
        ),
      )
          :Container(child: Row(
        children: <Widget>[
          Container(
            width: 300,
            color: Colors.red,
          ),
          Container(
            width: 300,
            color: Colors.purple,
          )
        ],
      ),),
    );
  }
}
