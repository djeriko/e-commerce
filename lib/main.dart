import 'package:e_commerce/components/drawer.dart';
import 'package:e_commerce/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:e_commerce/components/horizontal_listview.dart';
import 'package:e_commerce/components/products.dart';
import 'package:e_commerce/components/appbar.dart';

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
    height: 110.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/main1.jpg'),
        AssetImage('images/main2.jpg'),
        AssetImage('images/main3.jpg'),
        AssetImage('images/main4.jpg'),
        AssetImage('images/main5.jpg'),
        AssetImage('images/main6.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 4.0,
      dotBgColor: Colors.transparent,
    ),
  );

    return Scaffold(
      appBar: MyAppBar(), 
      drawer: MyDrawer(), 
      body: new ListView(children: <Widget>[
        //image carousel begins here
        imageCarousel,

        //padding widget 
        new Padding(padding: const EdgeInsets.all(8.0),
        child: new Text('Категории')), 

        //Horizontal list view begins here
        HorizontalListView(),

        //padding widget
        new Padding(padding: const EdgeInsets.all(10.0),
          child: new Text('Популярное'),),

        //GridView
        Container(
          height: 320.0,
          child: Products(),
        )
      ],)
    );
  }
}
