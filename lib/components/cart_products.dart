import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  var productsOnTheCart = [
    {
      "name": "Sharkoon SG34",
      "picture": "images/products/chair.jpg",
      "price": 85,
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "PulseFire",
      "picture": "images/products/mouse.jpg",
      "price": 50,
      "color": "Black",
      "quantity": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnTheCart.length,
      itemBuilder: (context, index) {
        return SingleCardProduct(
          cart_prod_name: productsOnTheCart[index]["name"],
          cart_prod_picture: productsOnTheCart[index]["picture"],
          cart_prod_price: productsOnTheCart[index]["price"],
          cart_prod_color: productsOnTheCart[index]["color"],
          cart_prod_quantity: productsOnTheCart[index]["quantity"],
        );
      },
    );
  }
}

class SingleCardProduct extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_quantity;

  SingleCardProduct(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_color,
      this.cart_prod_quantity});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // Leading section
        leading: Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),

        // Title section
        title: Text(cart_prod_name),

        // Subtitle section
        subtitle: new Column(
          children: <Widget>[
            // Row inside the column
            new Row(
              children: <Widget>[
                // Color
                Padding(
                  child: Text("Цвет:"),
                  padding: EdgeInsets.all(0.0),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

            // Product price section
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),

        //Trailing 
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_drop_up),
                onPressed: null,
              ),
              Text(cart_prod_quantity.toString()),
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
