import 'package:flutter/material.dart';
import 'package:myapp_flutter/pages/TrackDetailsPage.dart';
import 'package:myapp_flutter/pages/calender.dart';

class RaceCard extends StatelessWidget {
  final F1Race race;

  const RaceCard({Key? key, required this.race}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to track details page (implementation not provided)
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TrackDetailsPage(race: race),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display race image if available
              if (race.circuitImage != null)
                Image.network(
                  race.circuitImage!,
                  height: 150.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              const SizedBox(height: 10.0),
              Text(
                race.name,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(race.date),
                  Text(race.time),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}