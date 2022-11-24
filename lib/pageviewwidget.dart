import 'package:flutter/material.dart';

import 'buttonwidget.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Widget'),
        centerTitle: true,
        actions: [

          IconButton(onPressed: () {
            controller.previousPage(
                duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
          }, icon: Icon(Icons.arrow_left)),
          IconButton(onPressed: () {
            controller.nextPage(
                duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
          }, icon: Icon(Icons.arrow_right)),
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
        controller: controller,
        onPageChanged: (index) {
          print(index);
        },
        children: [
          ButtonWidget(),
          Container(
            color: Colors.white,
            child: Center(
                child: Text(
              "Page 02",
              style: TextStyle(fontSize: 30),
            )),
          ),
          Container(
            color: Colors.blue,
            child: Center(
                child: Text(
              "Page 03",
              style: TextStyle(fontSize: 30),
            )),
          ),
          Container(
            color: Colors.green,
            child: Center(
                child: Text(
              "Page 04",
              style: TextStyle(fontSize: 30),
            )),
          ),
        ],
      ),
    );
  }
}
