import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E2C),
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 167, 167, 222),
        elevation: 0.0,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person, color: Colors.tealAccent),
            title: Text('Edit Profile', style: TextStyle(color: Colors.white)),
          ),
          Divider(color: Colors.grey),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.tealAccent),
            title: Text('Account Settings', style: TextStyle(color: Colors.white)),
          ),
          Divider(color: Colors.grey),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.redAccent),
            title: Text('Logout', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
