import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:e_commerce/components/horizontal_listview.dart';
import 'package:e_commerce/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget imageCarousel = new Container(
    height: 250.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 4.0,
    ),
  );

    return Scaffold(
      appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text('Fashapp'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {}),
          ]),
      drawer: new Drawer(
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
              decoration: new BoxDecoration(color: Colors.red),
            ),

            //body
            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),
            
            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            
            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),
            
            InkWell(
              onTap:(){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),
    
          ],
        ),
      ),
      body: new ListView(children: <Widget>[
        //image carousel begins here
        imageCarousel,

        //padding widget 
        new Padding(padding: const EdgeInsets.all(8.0),
        child: new Text('Categories')), 

        //Horizontal list view begins here
        HorizontalListView(),

        //padding widget
        new Padding(padding: const EdgeInsets.all(15.0),
          child: new Text('Recent products'),),

        //GridView
        Container(
          height: 320.0,
          child: Products(),
        )
      ],)
    );
  }
}
