import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';
import 'package:myapp_flutter/views/newscards.dart';

class Dashboard extends StatelessWidget {
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
          )),
      body: Column(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            //Move to the setings page
            
          ),
        ],
        selectedItemColor: primaryColor,
      ),
    );
  }
}
