import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/keyboards.png',
            image_caption: 'Keyboards',
          ),

          Category(
            image_location: 'images/cats/mouses.jpg',
            image_caption: 'Mouses',
          ),

          Category(
            image_location: 'images/cats/tshirts.jpg',
            image_caption: 'T-Shirts',
          ),
          
          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'Informal',
          ),
          
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'Dress',
          ),
          
          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'Accessories',
          ),
          
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          height: 80.0,
          child: ListTile(
            title: Image.asset(image_location),
            subtitle: Container(
                alignment: Alignment.topCenter, child: Text(image_caption)),
          ),
        ),
      ),
    );
  }
}
