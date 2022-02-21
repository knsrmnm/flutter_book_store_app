import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: HomeScreen(),
    );
  }
}
