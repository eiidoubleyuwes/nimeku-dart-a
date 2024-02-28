import 'package:flutter/material.dart';
import 'package:myapp_flutter/views/Racecards.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: f1Races.length,
      itemBuilder: (context, index) {
        final race = f1Races[index];
        return RaceCard(race: race); // Use RaceCard widget
      },
    );
  }
}

class F1Race {
  final String name;
  final String date;
  final String time;
  final String? circuitImage; // Optional circuit image

  F1Race({
    required this.name,
    required this.date,
    required this.time,
    this                    
  .circuitImage,
  });
}

// Add more races 
final List<F1Race> f1Races = [
  F1Race(name: 'Australian Grand Prix',date: '21 March 2024',time: '06:00 AM',),
  F1Race(name: 'Bahrain Grand Prix', date: '28 March 2024', time: '06:00 AM'),
  F1Race(name: 'Nairobi Grand Prix', date: '11 April 2024', time: '07:00 AM'),
  F1Race(name: 'Emilia Romagna Grand Prix', date: '21 April 2024', time: '09:00 AM'),
  F1Race(name: 'Miami Grand Prix', date: '05 May 2024', time: '09:00 AM'),
  F1Race(name: 'Spanish Grand Prix', date: '19 May 2024', time: '09:00 AM'),
  F1Race(name: 'Monaco Grand Prix', date: '26 May 2024', time: '09:00 AM'),
  F1Race(name: 'Azerbaijan Grand Prix', date: '09 June 2024', time: '06:00 AM'),
  F1Race(name: 'Canadian Grand Prix', date: '16 June 2024', time: '02:00 PM'),
  F1Race(name: 'French Grand Prix', date: '30 June 2024', time: '09:00 AM'),
  F1Race(name: 'Hungarian Grand Prix', date: '21 July 2024', time: '09:00 AM'),
  F1Race(name: 'Belgian Grand Prix', date: '04 August 2024', time: '09:00 AM'),
  F1Race(name: 'Dutch Grand Prix', date: '18 August 2024', time: '09:00 AM'),
  F1Race(name: 'Italian Grand Prix', date: '08 September 2024', time: '09:00 AM'),
  F1Race(name: 'Singapore Grand Prix', date: '22 September 2024', time: '07:00 PM'),
  F1Race(name: 'Japanese Grand Prix', date: '06 October 2024', time: '06:00 AM'),
  F1Race(name: 'Qatar Grand Prix', date: '20 October 2024', time: '06:00 PM'),
  F1Race(name: 'Abu Dhabi Grand Prix', date: '17 November 2024', time: '01:00 PM'),
  F1Race(name: 'Las Vegas Grand Prix', date: '17 June 2024', time: '07:00 AM'),
];

