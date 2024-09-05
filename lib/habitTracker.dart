import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(HabitTrackerApp());
}

class HabitTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HabitListScreen(),
    );
  }
}

class HabitListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habit Tracker'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Navigate to a screen for adding new habits
            },
          )
        ],
      ),
      body: ListView(
        children: [
          // Replace this with a dynamic list of habits
          HabitCard(),
        ],
      ),
    );
  }
}

class HabitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Exercise'),
        subtitle: Text('Streak: 5 days'),
        trailing: CircularProgressIndicator(value: 0.7), // Show habit progress
        onTap: () {
          // Navigate to habit details
        },
      ),
    );
  }
}

class HabitDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habit Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Habit: Exercise', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Progress:'),
            SizedBox(height: 10),
            LinearProgressIndicator(value: 0.7), // Progress bar
            SizedBox(height: 20),
            Text('Current Streak: 5 days'),
            SizedBox(height: 20),
            Text(
              '“The only way to achieve the impossible is to believe it is possible.”',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}



// class Habit {
//   String name;
//   int streak;
//   double progress;

//   Habit({required this.name, this.streak = 0, this.progress = 0.0});

//   Map<String, dynamic> toMap() {
//     return {
//       'name': name,
//       'streak': streak,
//       'progress': progress,
//     };
//   }

//   static Habit fromMap(Map<String, dynamic> map) {
//     return Habit(
//       name: map['name'],
//       streak: map['streak'],
//       progress: map['progress'],
//     );
//   }
// }

// class HabitStorage {
//   static const _key = 'habits';

//   Future<void> saveHabits(List<Habit> habits) async {
//     final prefs = await SharedPreferences.getInstance();
//     final habitList = habits.map((h) => h.toMap()).toList();
//     prefs.setString(_key, habitList.toString());
//   }

//   Future<List<Habit>> loadHabits() async {
//     final prefs = await SharedPreferences.getInstance();
//     final String? habitString = prefs.getString(_key);
//     if (habitString != null) {
//       final habitList = List<Map<String, dynamic>>.from(
//         habitString as Iterable
//       );
//       return habitList.map((h) => Habit.fromMap(h)).toList();
//     }
//     return [];
//   }
// }