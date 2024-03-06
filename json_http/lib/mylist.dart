import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchAlbum(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data[index].title),
                  subtitle: Text(snapshot.data[index].id.toString()),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
  ListfetchAlbum() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 200) {
      return AlbumFromJson(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }
}
