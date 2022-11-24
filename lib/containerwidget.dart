import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Container Widget'),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: (){

        },
        child: Center(
          child: Container(
            child: Text('Hello world'),
             margin: EdgeInsets.fromLTRB(10, 20, 40, 10),
             padding: EdgeInsets.all(50),
            // color: Colors.green,
            // alignment: Alignment.center,
            constraints: BoxConstraints(
              // minWidth: 20,maxWidth: 100,maxHeight: 100,minHeight: 20
            ),
            decoration: BoxDecoration(
              color: Colors.green,
                  // shape:  BoxShape.circle,
              border: Border.all(color: Colors.red,width: 5)
            ),
          ),
        ),
      ),
    );
  }
}
