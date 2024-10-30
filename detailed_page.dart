import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String? title;

  DetailPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Details for $title',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
