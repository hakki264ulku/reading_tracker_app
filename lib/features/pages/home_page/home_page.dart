import 'package:flutter/material.dart';
import 'package:reading_tracker_app/features/pages/home_page/my_books.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const TextStyle txtStyle = TextStyle(
      fontFamily: "Baskervville",
      fontSize: 24,
      color: Color(0xFF1A1D1E),
      fontWeight: FontWeight.w500
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(height: 40,),
          Center(
            child: Text("My Books", style: txtStyle,),
          ),
          Container(
            child: MyBooks(),
          ),
        ],
      ),
    );
  }
}
