import 'package:flutter/material.dart';


class ListViewWidget extends StatelessWidget {
  List<String> myList = ['Book','Note','Pen','NoteBook','Pencil','Reedbook',
    'Book','Note','Pen','NoteBook','Pencil','Reedbook','Book','Note','Pen',
    'NoteBook','Pencil','Reedbook','Book','Note','Pen','NoteBook','Pencil',
    'Reedbook','Book','Note','Pen','NoteBook','Pencil','Reedbook','Book',
    'Note','Pen','NoteBook','Pencil','Reedbook','Book','Note','Pen','NoteBook',
    'Pencil','Reedbook'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listlar bilan ishlash'
          ),
        ),
        body: Container(
          child: ListView.builder(itemBuilder: (context,index){
            return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(myList[index]),
                ));
          } ,
            itemCount: myList.length,
          ),

          //   child: ListView(
          //     children: myList.map((e){
          //       return Card(
          //       child: Text(e),
          //       );
          //  }).toList(),
          // ),
        )
    );
  }


}
