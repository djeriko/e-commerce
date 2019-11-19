import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpeg",
      "old_price": 120,
      "price": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.product_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
