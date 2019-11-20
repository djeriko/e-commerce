import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.black87,
          title: InkWell(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => new HomePage()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/logo.png', fit: BoxFit.fitHeight),
            ),
          ),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
          ]),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "\$${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: new Text(
                        "\$${widget.product_detail_new_price}",
                        style: TextStyle(color: Colors.green),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),

//        ===== The first buttons =====
          Row(
            children: <Widget>[
//        ===== The color button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Цвет"),
                            content: new Text("Выберите цвет"),
                            actions: <Widget>[
                              // Button to close AlertDialog
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Закрыть"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Цвет"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              //        ===== The quantity button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Количество"),
                            content: new Text("Укажите количество"),
                            actions: <Widget>[
                              // Button to close AlertDialog
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Закрыть"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Кол-во"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              //        ===== The size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Размер"),
                            content: new Text("Выберите размер"),
                            actions: <Widget>[
                              // Button to close AlertDialog
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Закрыть"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Размер"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
//          ===== The buy button =====
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.green,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Купить"),
                ),
              ),

              new IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.green,
                onPressed: () {},
              )
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Подробнее о продукте"),
            subtitle: new Text(
                "Игровое кресло SKILLER SGS4 выделяется не только благодаря своей спортивному внешнему виду, но и прежде всего благодаря большому и удобному сиденью. Большое сиденье и спинка вместе с прочной пятизвездочной основой и прочной стальной рамой гарантируют, что даже крупные пользователи могут расслабиться и погрузиться в игру.Почти все элементы кресла могут быть отрегулированы для удобства пользователя, так что эргономичное положение сидя гарантировано в любое время. Для дополнительного комфорта SKILLER SGS4 поставляется с подголовником и поясничной подушкой."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Наименование: ',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Brand name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(child: new Text("Brand 1"), padding: EdgeInsets.all(5.0),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product condition',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Похожие товары"),
          ),

          //SIMILAR PRODUCT SECTION
          Container(
            height: 360,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Sharkoon SG34",
      "picture": "images/products/chair.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "HyperX Cloud",
      "picture": "images/products/headphone.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Logitech G-r540",
      "picture": "images/products/keyboard.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "PulseFire",
      "picture": "images/products/mouse.jpg",
      "old_price": 120,
      "price": 85,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new CupertinoPageRoute(
                //passing the values of the product to product_details page
                builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                  ]),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
