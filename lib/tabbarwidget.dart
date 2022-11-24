import 'package:flutter/material.dart';
import 'package:whatsapp_clone/rowcolumn.dart';


class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(text: 'Tab 01',icon: Icon(Icons.home),
            ),
            Tab(text: 'Tab 02',icon: Icon(Icons.star),
            ),
            Tab(text: 'Tab 03',icon: Icon(Icons.person),
            ),
          ]),
        ),
        body: TabBarView(children: [
          RowColumnWidget(),
          Container(
            color: Colors.blue,
            child: Center(
                child: Text(
                  "Tab 02",
                  style: TextStyle(fontSize: 30),

                )),
          ),
          Container(
            color: Colors.green,
            child: Center(
                child: Text(
                  "Tab 03",
                  style: TextStyle(fontSize: 30),
                )),
          ),
        ]),
      ),
    );
  }
}
