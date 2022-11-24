import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Widget"),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount:5,itemBuilder: (context,index){
        return   Container(

          width: double.infinity,
          height: 300,
          // color: Colors.red,
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.red,
            //   color: Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 15,
            margin: EdgeInsets.all(8),
            shadowColor: Colors.blue,
            child: Image.asset("assets/news_icon.jpg",fit: BoxFit.cover,),
          ),
        );
      })

    );
  }
}
