import 'package:flutter/material.dart';

class ListViewBilder extends StatelessWidget {
  const ListViewBilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lst = List.generate(100, (index) => "$index");
    final lst1 = [
      'Bangladesh','India','USA','Nepal','Pakiston','Sri-Lanka'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('List Widget'),
        centerTitle: true,
      ),
      // body: ListView(
      //   children: [
      //     ListTile(
      //       title: Text('Sultan Sultan'),
      //       subtitle: Text('Flutter Developer'),
      //       trailing: Icon(Icons.star,color: Colors.orange,),
      //       leading: CircleAvatar(
      //         backgroundColor:  Colors.brown.shade800,
      //         child: Text('SS'),
      //       ),
      //     ),        ListTile(
      //       title: Text('Sultan Sultan'),
      //       subtitle: Text('Flutter Developer'),
      //       trailing: Icon(Icons.star,color: Colors.orange,),
      //       leading: CircleAvatar(
      //         backgroundColor:  Colors.brown.shade800,
      //         child: Text('SS'),
      //       ),
      //     ),
      //   ],
      // ),
      body: ListView.separated(
        separatorBuilder: (context,index)=>Divider(color: Colors.black,),
          itemCount: lst1.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){
                print(lst[index]);
              },
              title: Text(lst1[index]),
              subtitle: Text('Cuntry Name'),
              trailing: Icon(
                Icons.star,
                color: Colors.orange,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.brown.shade800,
                child: Text(lst1[index][0]),
              ),
            );
          }),
    );
  }
}
