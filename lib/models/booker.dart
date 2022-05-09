import 'package:flutter/material.dart';

import 'book.dart';

class Booker extends StatefulWidget {
  final Book books;
  const Booker({required this.books, Key? key}) : super(key: key);

  @override
  State<Booker> createState() => _BookerState();
}

class _BookerState extends State<Booker> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                      child: Image(
                    image: AssetImage(
                      widget.books.image,
                    ),
                    fit: BoxFit.cover,
                  )),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      like = !like;
                    });
                  },
                  icon: Icon(like ? Icons.favorite : Icons.favorite_border),
                  iconSize: 26,
                  color: like ? Colors.pink : Colors.grey[700],
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.books.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.books.publisher,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
