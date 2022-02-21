import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/data/book_list.dart';
import 'package:flutter_book_store_app/model/book.dart';
import 'package:iconsax/iconsax.dart';

/// Home Screen
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Iconsax.menu, color: Colors.black45),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 23.0),
            child: Icon(Iconsax.notification, color: Colors.black45),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 23.0),
            child: Column(
              children: [
                _makeSearchBoxEl(),
                const SizedBox(height: 20.0),
                _makeTitleEl("🔥New Arrival"),
                const SizedBox(height: 10.0),
                _makeBookSlider(BookList.newArrivalBooks),
                const SizedBox(height: 30.0),
                _makeTitleEl("️For You"),
                const SizedBox(height: 10.0),
                _makeBookSlider(BookList.forYouBooks),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.book),
            activeIcon: Icon(Iconsax.book, color: Colors.teal),
            label: 'Book',
            tooltip: "This is a Book Page",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shopping_cart),
            activeIcon: Icon(Iconsax.shopping_cart, color: Colors.teal),
            label: 'Shop',
            tooltip: "This is a Business Page",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_circle),
            activeIcon: Icon(Iconsax.personalcard, color: Colors.teal),
            label: 'My page',
            tooltip: "This is a School Page",
          ),
        ],
      )
    );
  }
}

/// Make Search box widget.
Widget _makeSearchBoxEl() {
  return Row(
    children: <Widget>[
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.grey[200]
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.grey),
              hintText: "Search",
            ),
          ),
        ),
      ),
      const SizedBox(width: 20.0),
      Icon(Iconsax.camera, color: Colors.black45, size: 25),
    ],
  );
}

/// Make title widget with "See all" button.
Widget _makeTitleEl(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
      ),
      TextButton(
        onPressed: (){},
        child: Text("See all")
      ),
    ],
  );
}

/// Make book slier widget.
Widget _makeBookSlider(List<Book> books) {
  List<Widget> contents = [];
  for (Book book in books) {
    contents.add(_makeBookEl(book));
    contents.add(SizedBox(width: 20.0));
  }
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: contents,
    ),
  );
}

/// Make book widget.
Widget _makeBookEl(Book book) {
  return Container(
    width: 80.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(book.image, height: 120.0),
        const SizedBox(height: 5.0),
        Text(book.title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0), overflow: TextOverflow.ellipsis),
        const SizedBox(height: 5.0),
        _makeTextWithBg(book.category.name, book.category.bgColor, book.category.textColor),
      ],
    ),
  );
}

/// Make Text widget with colored Background.
Widget _makeTextWithBg(String text, Color bgColor, Color textColor) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      color: bgColor,
    ),
    padding: EdgeInsets.all(5.0),
    child: Text(text, style: TextStyle(color: textColor, fontSize: 8.5)),
  );
}
