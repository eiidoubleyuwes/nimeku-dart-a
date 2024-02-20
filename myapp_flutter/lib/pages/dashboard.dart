import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';
import 'package:myapp_flutter/views/newscards.dart';

class Dashboard extends StatelessWidget {
  final List<NewsCard> news = [
    NewsCard(
      title: "Hamilton Wins Dramatic Race in Spain",
      subtitle: "Verstappen crashes out on final lap",
      imageUrl: "https://example.com/hamilton-win.jpg",
    ),
    NewsCard(
      title: "Leclerc Takes Pole Position in Monaco",
      subtitle: "Sainz crashes in Q3",
      imageUrl: "https://example.com/leclerc-pole.jpg",
    ),
    // Add more news cards here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formula Dart'),
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
         titleTextStyle: TextStyle(
            color: headercolor,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          )
      ),
      body: Column(
        children: [
          // F1 News Section
          Expanded(
           child: ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: news.length,
              itemBuilder: (context, index) {
                return NewsCardWidget(news[index]);
              },
            ),
          ),
          // F1 Team Logos Section
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: f1TeamLogos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(f1TeamLogos[index]),
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


List<String> f1TeamLogos = [
  'assets/images/alpine.png',
  'assets/images/logo-ferrari-18-.png',
  'assets/images/red-bull.png',
];