import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

/// Detail screen.
class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(-1, -1),
            child: Container(
              child: Image.asset("assets/images/book1.jpg", alignment: Alignment(-1, -1), scale: 0.1,),
            )
          ),
          Align(
            alignment: Alignment(-0.85, -0.8),
            child: Icon(Iconsax.arrow_left, color: Colors.white),
          ),
          Align(
            alignment: Alignment(-1, 1),
            child: Container(
              width: size.width,
              height: size.height/2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
              ),
            ),
          )
        ],
      ),
    );
  }
}
