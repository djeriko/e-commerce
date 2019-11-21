import 'package:e_commerce/pages/cart.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Fedor Dostoyevskiy'),
              accountEmail: Text('genius@mail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.black87),
            ),

            //body
            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home, color: Colors.orange[700]),
              ),
            ),

            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.orange[700]),
              ),
            ),
            
            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.orange[700]),
              ),
            ),
            
            InkWell(
              onTap:(){
                Navigator.push(context, (MaterialPageRoute(builder: (context) => new Cart())));
              },
              child: ListTile(
                title: Text('Корзина'),
                leading: Icon(Icons.shopping_cart, color: Colors.orange[700]),
              ),
            ),

            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('Избранное'),
                leading: Icon(Icons.favorite, color: Colors.orange[700]),
              ),
            ),

            Divider(),

            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            
            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      );
  }
}