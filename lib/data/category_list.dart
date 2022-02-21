import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/model/category.dart';

/// Category list
class CategoryList {
  static final Category business = Category("Business", Colors.blue.withOpacity(0.3), Colors.indigo);
  static final Category novel = Category("Novel", Colors.pinkAccent.withOpacity(0.2), Colors.black54);
  static final Category biography = Category("Biography", Colors.lightGreenAccent.withOpacity(0.3), Colors.teal);
}
