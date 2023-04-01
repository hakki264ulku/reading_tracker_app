import 'package:flutter/material.dart';
import 'package:reading_tracker_app/features/pages/home_page/book.dart';
import 'package:reading_tracker_app/models/book.dart';

class MyBooks extends StatefulWidget {
  const MyBooks({Key? key}) : super(key: key);

  @override
  State<MyBooks> createState() => _MyBooksState();
}

class _MyBooksState extends State<MyBooks> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    List<Book> books = [
      Book(name: "book1", coverUrl: "assets/bookcover2.png", id: "123"),
      Book(name: "book2", coverUrl: "assets/bookcover2.png", id: "124"),
      Book(name: "book3", coverUrl: "assets/bookcover2.png", id: "125"),
      Book(name: "book4", coverUrl: "assets/bookcover2.png", id: "123"),
      Book(name: "book5", coverUrl: "assets/bookcover2.png", id: "124"),
      Book(name: "book6", coverUrl: "assets/bookcover2.png", id: "125"),
      Book(name: "book7", coverUrl: "assets/bookcover2.png", id: "123"),
      Book(name: "book8", coverUrl: "assets/bookcover2.png", id: "124"),
      Book(name: "book9", coverUrl: "assets/bookcover2.png", id: "125"),
      Book(name: "book10", coverUrl: "assets/bookcover2.png", id: "123"),
      Book(name: "book11", coverUrl: "assets/bookcover2.png", id: "124"),
      Book(name: "book12", coverUrl: "assets/bookcover2.png", id: "125"),
    ];

    List<Widget> bookWidgets = [];

    if (this.isExpanded) {
      var len = books.length;
      var size = 2;
      List<List<Book>> chunks = [];

      for (var i = 0; i < len; i += size) {
        var end = (i + size < len) ? i + size : len;
        chunks.add(books.sublist(i, end));
        bookWidgets.add(Column(
          children: [
            MyBook(
              bookPath: books.sublist(i, end)[0].coverUrl,
            ),
            MyBook(
              bookPath: books.sublist(i, end)[1].coverUrl,
            ),
          ],
        ));
      }
    } else {
      for (var i = 0; i < books.length; i++) {
        bookWidgets.add(MyBook(bookPath: books[i].coverUrl));
      }
    }

    return Stack(
      children: [
        AnimatedContainer(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
              ),
              BoxShadow(
                color: Color(0xFFFBFBFB),
                spreadRadius: -1.0,
                blurRadius: 20.0,
              ),
            ],
          ),
          height: isExpanded ? 270.0 : 150,
          duration: const Duration(seconds: 1),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: bookWidgets,
          ),
        ),
        Positioned(
          left: 180,
          top: isExpanded ? 270.0 : 150,
          child: InkWell(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.grey,
            ),
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        )
      ],
    );
  }
}
