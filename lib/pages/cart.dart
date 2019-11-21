import 'package:e_commerce/components/appbar.dart';
import 'package:flutter/material.dart';
import "package:e_commerce/components/cart_products.dart";

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Top appBar
      appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.black87,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/logo.png', fit: BoxFit.fitHeight),
          ),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
          ]),

      body: new CartProduct(),

          // Buy button 
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Общая сумма:"),
                subtitle: new Text("\$230"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new MaterialButton(
                  onPressed: () {},
                  child: Text("Оплатить", style: TextStyle(color: Colors.white),),
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
