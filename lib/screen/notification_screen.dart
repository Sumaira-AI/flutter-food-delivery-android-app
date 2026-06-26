import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Color.fromARGB(255, 244, 242, 242),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 58, 140),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildNotification(
            "Your order has been shipped!",
            "Your food is on the way. It will arrive soon.",
            Icons.local_shipping,
          ),
          _buildNotification(
            "New discount available!",
            "Get 20% off on all fast food items.",
            Icons.discount,
          ),
          _buildNotification(
            "Reminder",
            "You left some items in your cart. Complete your order!",
            Icons.shopping_cart,
          ),
          _buildNotification(
            "New items added",
            "Check out our new snacks and drinks.",
            Icons.fastfood,
          ),
          _buildNotification(
            "App Update",
            "A new version of the app is available.",
            Icons.system_update,
          ),
        ],
      ),
    );
  }

  Widget _buildNotification(String title, String subtitle, IconData icon) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(radius: 22, child: Icon(icon, size: 22)),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 13)),
      ),
    );
  }
}
