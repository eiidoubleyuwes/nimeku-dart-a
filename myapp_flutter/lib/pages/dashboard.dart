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
