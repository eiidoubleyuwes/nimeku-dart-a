import 'package:flutter/material.dart';
import 'package:myapp_flutter/views/newscards.dart';

class newsPage extends StatelessWidget {
  final List<NewsCard> news = [
    NewsCard(
      title: "Pierre Gasly Wins Dramatic Race in Spain",
      subtitle: "Verstappen crashes out on final lap",
      imageUrl: "assets/images/alpine.png",
    ),
    NewsCard(
      title: "Leclerc Takes Pole Position in Monaco",
      subtitle: "Sainz crashes in Q3",
      imageUrl: "assets/images/logo-ferrari-18-.png",
    ),
    NewsCard(
      title: "Hamilton Wins in Silverstone",
      subtitle: "Verstappen frustrated after collision",
      imageUrl: "assets/images/mercedes.jpg",
    ),
    NewsCard(
      title: "Vettel Wins in Hungary",
      subtitle: "First win for Him back at Red Bull",
      imageUrl: "assets/images/red-bull.png",
    ),
     NewsCard(
      title: "Mercedes distraught afther Hamilton exit",
      subtitle: "Fred Vasseur: 'We were lucky'",
      imageUrl: "assets/images/look.png",
    ),
  ];
  newsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.0),
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
      ],
    );
  }
}
