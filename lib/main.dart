import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reading_tracker_app/features/app/reading_tracker_app.dart';
import 'package:reading_tracker_app/features/navigation_bar/bloc/navigation_bloc.dart';
import 'package:reading_tracker_app/features/navigation_bar/bloc/navigation_state.dart';
import 'package:reading_tracker_app/features/navigation_bar/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reading Tracker App',
      home: WholeApplication(),
    );
  }
}

class WholeApplication extends StatefulWidget {
  late NavigationBloc navigationBloc;

  WholeApplication({Key? key}) : super(key: key) {
    navigationBloc = NavigationBloc(HomeSelectedState());
  }

  @override
  State<WholeApplication> createState() => _WholeApplicationState();
}

class _WholeApplicationState extends State<WholeApplication> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>.value(value: widget.navigationBloc),
      ],
      child: const Scaffold(
        body: ReadingTrackerApp(),
        bottomNavigationBar: NavigationBar(),
      ),
    );
  }
}
