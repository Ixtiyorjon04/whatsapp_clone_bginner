import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Page02(data: "Isacoff Ixtiyorjon")));
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(280, 70),
              textStyle: TextStyle(fontSize: 24),
              primary: Colors.orange,
              onPrimary: Colors.black,
            ),
            child: Text('Page 1')),
      ),
    );
  }
}

class Page02 extends StatefulWidget {
  var data;

  Page02({this.data, Key? key}) : super(key: key);

  @override
  State<Page02> createState() => _Page02State();
}

class _Page02State extends State<Page02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Page03()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(280, 70),
                textStyle: TextStyle(fontSize: 24),
                primary: Colors.orange,
                onPrimary: Colors.black,
              ),
              child: Text('Page 2')),
          SizedBox(height: 12),
          Text(widget.data)
        ],
      ),
    );
  }
}

class Page03 extends StatefulWidget {
  const Page03({Key? key}) : super(key: key);

  @override
  State<Page03> createState() => _Page03State();
}

class _Page03State extends State<Page03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(280, 70),
              textStyle: TextStyle(fontSize: 24),
              primary: Colors.orange,
              onPrimary: Colors.black,
            ),
            child: Text('Page 3')),
      ),
    );
  }
}
