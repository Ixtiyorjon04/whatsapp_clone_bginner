import 'package:flutter/material.dart';
import 'package:whatsapp_clone/bottomnavigationWidget.dart';
import 'package:whatsapp_clone/cardwidget.dart';
import 'package:whatsapp_clone/containerwidget.dart';
import 'package:whatsapp_clone/deviceRoot/deviceRootWidget.dart';
import 'package:whatsapp_clone/drawerwidget.dart';
import 'package:whatsapp_clone/homepage.dart';
import 'package:whatsapp_clone/listView/listViewWidget.dart';
import 'package:whatsapp_clone/listviewbuilder.dart';
import 'package:whatsapp_clone/navigatorpage.dart';
import 'package:whatsapp_clone/pageviewwidget.dart';
import 'package:whatsapp_clone/rowcolumn.dart';
import 'package:whatsapp_clone/scaffoldtext.dart';
import 'package:whatsapp_clone/stackwidget.dart';
import 'package:whatsapp_clone/tabbarwidget.dart';
import 'package:whatsapp_clone/textfieldwidget.dart';
import 'package:whatsapp_clone/whatsappScreen/whatsappui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //    debugShowCheckedModeBanner: false,
  //    visualDensity: VisualDensity.adaptivePlatformDensity
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  WhatsAppUi(),
    );
  }
}

