import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue[50]),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/256/5231/5231019.png'),
                ),
                SizedBox(height: 2),
                Text(
                  'noor@gmail.com',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Frinds'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
