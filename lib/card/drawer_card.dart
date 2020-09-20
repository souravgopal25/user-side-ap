import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Sourav Sharma",
              style: TextStyle(fontSize: 20),
            ),
            accountEmail:
                Text("souravgopal25@gmail.com", style: TextStyle(fontSize: 15)),
            currentAccountPicture: CircleAvatar(
              radius: 100.0,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.forward),
            title: Text(
              'SignOut',
              style: TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
