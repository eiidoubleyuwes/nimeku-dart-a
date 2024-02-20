import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
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
        title: Text("F1 News"),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return NewsCardWidget(news[index]);
        },
      ),
    );
  }
}

class NewsCard {
  final String title;
  final String subtitle;
  final String imageUrl;

  NewsCard(
      {required this.title, required this.subtitle, required this.imageUrl});
}

class NewsCardWidget extends StatelessWidget {
  final NewsCard news;

  NewsCardWidget(this.news);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(news.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              news.title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              news.subtitle,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
