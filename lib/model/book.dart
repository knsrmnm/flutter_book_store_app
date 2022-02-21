
import 'package:flutter_book_store_app/model/category.dart';

/// Book model
class Book {
  final String title;
  final int price;
  final String image;
  final Category category;

  Book(this.title, this.price, this.image, this.category);
}
