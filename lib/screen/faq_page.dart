import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 73, 49, 149),
        title: const Text(
          "FAQs",
          style: TextStyle(
            color: Color.fromARGB(255, 240, 233, 233),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildFAQ(
            "Is app me products fresh hote hain?",
            "Ji haan! Sare food items bilkul fresh deliver kiye jate hain.",
          ),
          _buildFAQ(
            "Delivery time kitna hota hai?",
            "Aam tor par 20–40 minutes me delivery ho jati hai.",
          ),
          _buildFAQ(
            "Payment kaise kar sakte hain?",
            "Cash on Delivery, Easypaisa aur JazzCash available hain.",
          ),
          _buildFAQ(
            "Order cancel ho sakta hai?",
            "Agar order prepare nahi hua, to cancel karna possible hota hai.",
          ),
          _buildFAQ(
            "Kya hum customer support se contact kar sakte hain?",
            "Haan, profile page me ‘contact Support’ option available hai.",
          ),
        ],
      ),
    );
  }

  Widget _buildFAQ(String question, String answer) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: ExpansionTile(
        title: Text(
          question,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              answer,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
