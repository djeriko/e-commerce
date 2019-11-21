import 'package:e_commerce/pages/cart.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black87,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/logo.png', fit: BoxFit.fitHeight),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              }),
        ]);
  }

  @override 
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
