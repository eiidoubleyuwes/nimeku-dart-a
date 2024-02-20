import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formula Dart'),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // F1 News Section
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: f1News.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(f1News[index]),
                  );
                },
              ),
            ),
          ),
          // F1 Team Logos Section
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: f1TeamLogos.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Image.asset(
                    f1TeamLogos[index],
                    width: 100,
                    height: 100,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Sample data for F1 news and team logos
List<String> f1News = [
  'Lewis Hamilton moves to Ferrari',
  'Sebastian Vettel signs for Audi for 2026',
  'Christian Horner to retire from Red Bull Racing',
];

List<String> f1TeamLogos = [
  'assets/team1_logo.png',
  'assets/team2_logo.png',
  'assets/team3_logo.png',
];