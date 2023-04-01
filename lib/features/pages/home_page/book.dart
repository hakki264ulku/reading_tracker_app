import 'package:flutter/material.dart';

class MyBook extends StatelessWidget {
  final String bookPath;
  const MyBook({Key? key, required this.bookPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 108,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(bookPath),
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
    );
  }
}
