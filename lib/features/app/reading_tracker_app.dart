import 'package:flutter/material.dart';
import 'package:reading_tracker_app/features/home_page/home_page.dart';
import 'package:reading_tracker_app/features/navigation_bar/navigation_bar.dart';

// ReadingTrackerApp is the root widget of whole application
class ReadingTrackerApp extends StatefulWidget {
  const ReadingTrackerApp({Key? key}) : super(key: key);

  @override
  State<ReadingTrackerApp> createState() => _ReadingTrackerAppState();
}

class _ReadingTrackerAppState extends State<ReadingTrackerApp> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}