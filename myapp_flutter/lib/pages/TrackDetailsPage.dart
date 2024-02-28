import 'package:flutter/material.dart';
import 'package:myapp_flutter/pages/calender.dart';

class TrackDetailsPage extends StatelessWidget {
  final F1Race race;

  const TrackDetailsPage({Key? key, required this.race}) : super(key: key);

  final meh = const Color(0xFFEC0023); // F1 Red
  final accentColor = const Color.fromARGB(255, 0, 0, 0); // F1 Black

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(race.name, style: TextStyle(color: Colors.white)),
        backgroundColor: meh,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align content left
            children: [
              // Display track image (implementation needed)
              Text(
                "Track Information",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: meh,
                ),
              ),
              const SizedBox(height: 10.0),

              // Track details with dividers
              _buildTrackDetail("Circuit Length:", "5.303 km"),
              Divider(color: accentColor), // Add divider
              _buildTrackDetail(
                  "Lap Record:", "1:27.097 (Sebastian Vettel, Ferrari, 2019)"),
               Divider(color: accentColor), // Add divider
              _buildTrackDetail("Location:", "Melbourne, Australia"),
              Divider(color: accentColor), // Add divider
              _buildTrackDetail("First Grand Prix:", "1996"),
              Divider(color: accentColor), // Add divider
              _buildTrackDetail("Number of Laps:", "58"),
              Divider(color: accentColor), // Add divider
              _buildTrackDetail("Fun Fact", "The track is a public road for 9 months of the year"),
              Divider(color: accentColor), // Add divider

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrackDetail(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            color: meh,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
