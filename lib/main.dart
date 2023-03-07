import 'package:flutter/material.dart';
import 'package:reading_tracker_app/features/app/reading_tracker_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reading Tracker App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WholeApplication(),
    );
  }
}

class WholeApplication extends StatefulWidget {
  const WholeApplication({Key? key}) : super(key: key);

  @override
  State<WholeApplication> createState() => _WholeApplicationState();
}

class _WholeApplicationState extends State<WholeApplication> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReadingTrackerApp(),
    );
  }
}
