import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsappScreen/callsScreen.dart';
import 'package:whatsapp_clone/whatsappScreen/cameraScreen.dart';
import 'package:whatsapp_clone/whatsappScreen/chatsScreen.dart';
import 'package:whatsapp_clone/whatsappScreen/statusScreen.dart';

class WhatsAppUi extends StatefulWidget {
  const WhatsAppUi({Key? key}) : super(key: key);

  @override
  State<WhatsAppUi> createState() => _WhatsAppUiState();
}

class _WhatsAppUiState extends State<WhatsAppUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
          backgroundColor: Color(0xff075e54),
          title: Text('WhatsApp Clone'),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(children: [
      CameraScreen(),ChatsScreen(),StatusScreen(), CallsScreen(),
        ]),
      ),
    );
  }
}
