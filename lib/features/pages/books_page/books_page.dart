import 'package:flutter/material.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: const Center(child: Text("Books Page")), color: Color(0xFFFBFBFB),);
  }
}
