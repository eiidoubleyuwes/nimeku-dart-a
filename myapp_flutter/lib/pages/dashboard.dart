import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('F1 Dashboard'),
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
  'News 1',
  'News 2',
  'News 3',
  'News 4',
  'News 5',
];

List<String> f1TeamLogos = [
  'assets/team1_logo.png',
  'assets/team2_logo.png',
  'assets/team3_logo.png',
  'assets/team4_logo.png',
  'assets/team5_logo.png',
];