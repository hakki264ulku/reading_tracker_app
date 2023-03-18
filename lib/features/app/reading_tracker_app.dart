import 'package:flutter/material.dart';
import 'package:reading_tracker_app/features/page_renderer/page_renderer.dart';

// ReadingTrackerApp is the root widget of whole application
class ReadingTrackerApp extends StatefulWidget {
  const ReadingTrackerApp({Key? key}) : super(key: key);

  @override
  State<ReadingTrackerApp> createState() => _ReadingTrackerAppState();
}

class _ReadingTrackerAppState extends State<ReadingTrackerApp> {
  @override
  Widget build(BuildContext context) {
    return const PageRenderer();
  }
}