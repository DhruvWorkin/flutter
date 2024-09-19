import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("data:image/jpeg;base64,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"),),
                Text("    The Souled Store"),
            ],
          ),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(CupertinoIcons.cart),),
            Tab(icon: Icon(CupertinoIcons.profile_circled),),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
        children: [
          DrawerHeader(child: Column(
            children: [
              CircleAvatar(radius: 50,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN2652EiLO5-ZwJ2ijSdi9HrjDVxn9khWBRA&s"))
            ],
          )),
          ListTile(title: Text("Home"), leading: Icon(Icons.home),),
          ListTile(title: Text("Orders"), leading: Icon(Icons.upcoming),),
          ListTile(title: Text("WishList"), leading: Icon(Icons.local_activity_rounded),),
          ListTile(title: Text("Cart"), leading: Icon(Icons.shopping_cart),),
          ListTile(title: Text("Contact Us"), leading: Icon(Icons.phone_rounded),),
          ListTile(title: Text("About Us"), leading: Icon(Icons.info_outline),),
          ListTile(title: Text("Logout"), leading: Icon(Icons.exit_to_app_outlined),),
          ListTile(title: Text("version 2.0.13"))
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Center(child: Text('Welcome to Soul Store')),
          Center(child: Text('Cart is Empty')),
          Center(child: Text('Profile')),
        ],
      ),
      ),
    );
  }
}
