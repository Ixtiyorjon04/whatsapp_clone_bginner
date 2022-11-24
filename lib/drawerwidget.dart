import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Widget"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                otherAccountsPictures: [
                  CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(
                        "assets/news_icon.jpg",
                        width: 240,
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      "assets/news_icon.jpg",
                      width: 240,
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                accountName: Text(
                  "Isacoff Ixtiyorjon",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                accountEmail: Text("accountEmail")),
            // DrawerHeader(
            //     decoration: BoxDecoration(color: Colors.blueAccent),
            //     child: Column(
            //       children: [
            //         CircleAvatar(
            //           child: ClipOval(
            //             child: Image.asset(
            //               "assets/news_icon.jpg",
            //               width: 240,
            //               height: 240,
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //           radius: 40,
            //         ),
            //         Text('Isacoff Ixtiyorjon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            //         Text("Flutter Developer")
            //       ],
            //     )
            // )
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home_outlined),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: Text('Favourite'),
                    leading: Icon(Icons.favorite_border),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: Text('WorkFlow'),
                    leading: Icon(Icons.workspaces_outline),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: Text('Update'),
                    leading: Icon(Icons.update),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: Text('Plugins'),
                    leading: Icon(Icons.account_tree_outlined),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: Text('Notification'),
                    leading: Icon(Icons.notifications_outlined),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
