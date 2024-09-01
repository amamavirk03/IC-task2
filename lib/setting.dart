import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color(0xFFDED3FD),
      ),
      body: Container(
        color: const Color(0xFFF6F6F6),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              tileColor: const Color(0xFFDED3FD),
              title: const Text('Account Settings'),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            const SizedBox(height: 10),
            ListTile(
              tileColor: const Color(0xFFDED3FD),
              title: const Text('Notification Settings'),
              leading: const Icon(Icons.notifications),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            const SizedBox(height: 10),
            ListTile(
              tileColor: const Color(0xFFDED3FD),
              title: const Text('Privacy Settings'),
              leading: const Icon(Icons.lock),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            const SizedBox(height: 10),
            ListTile(
              tileColor: const Color(0xFFDED3FD),
              title: const Text('About'),
              leading: const Icon(Icons.info),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
