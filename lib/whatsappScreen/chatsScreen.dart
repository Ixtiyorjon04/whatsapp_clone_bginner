import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chatmodel.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
          backgroundColor: Color(0xff075e54),
        ),
        body: ListView.builder(
            itemCount: dummayData.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(dummayData[index].image),
                ),
                title: Text(dummayData[index].name),
                subtitle: Text(dummayData[index].message),
                trailing: Text(dummayData[index].time),
              );
            }));
  }
}
