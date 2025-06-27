import 'package:flutter/material.dart';
import '../game_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sukhji Platform")),
      body: ListView(
        children: [
          // 🔷 बैनर
          Container(
            margin: EdgeInsets.all(12),
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/banner.jpg'), // आपका बैनर फोटो
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 16),

          // 🔶 गेम बटन (Firebase से लोड होंगे)
          GameButtons(),

          SizedBox(height: 24),

          // 🔹 नीचे कोई और कंटेंट
          Center(
            child: Text(
              "Welcome to Sukhji App!",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
