import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: CircleAvatar(
            backgroundColor: Color(0xFF1A2533),
            child: Icon(Icons.menu, color: Colors.white, size: 20),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.search, color: Colors.black, size: 20),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A2533),
              ),
            ),
            const SizedBox(height: 30),
            _buildSettingItem(
              context,
              Icons.person_outline,
              "Profile settings",
              "Settings regarding your profile",
            ),
            _buildSettingItem(
              context,
              Icons.newspaper,
              "News settings",
              "Choose your favourite topics",
            ),
            _buildSettingItem(
              context,
              Icons.notifications_none,
              "Notifications",
              "When would you like to be notified",
            ),
            _buildSettingItem(
              context,
              Icons.folder_open,
              "Subscriptions",
              "Currently, you are in Starter Plan",
            ),
            const SizedBox(height: 30),
            const Text(
              'Other',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1A2533),
              ),
            ),
            const SizedBox(height: 20),
            _buildSettingItem(
              context,
              Icons.bug_report_outlined,
              "Bug report",
              "Report bugs very easy",
            ),
            _buildSettingItem(
              context,
              Icons.share_outlined,
              "Share the app",
              "Share on social media networks",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          debugPrint('$title tapped');
        },
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.black87),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_circle_right_outlined, color: Colors.grey[400]),
          ],
        ),
      ),
    );
  }
}
