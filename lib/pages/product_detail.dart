import 'package:flutter/material.dart';
import 'package:flutter_fashapp/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: () => {Navigator.pop(context,MaterialPageRoute(builder: (context) => new HomePage()))},
            child: Text('Fashapp')),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
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
                        '\$${widget.product_detail_new_price}',
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: new Text(
                        '\$${widget.product_detail_old_price}',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              // ==== First Button ==== //
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text('Size'),
                          content: new Text('Choose the Size'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "close",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Size')),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),

              // ==== Second Button ==== //

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text('Color'),
                          content: new Text('Choose the color'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "close",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Color')),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),

              // ==== Third Button ==== //

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text('Quantity'),
                          content: new Text('Choose the quantity'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "close",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Qty')),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                elevation: 0.2,
                textColor: Colors.white,
                child: Text('Buy Now'),
              )),
              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
            ],
          ),

          Divider(),

          new ListTile(
            title: Text('Product details'),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),

          Divider(),

          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product name",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_detail_name),)
            ],
          ),

          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product brand",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),)
            ],
          ),

          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product condition",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text('NEW'),)
            ],
          ),

          Divider(),

          Padding(padding: EdgeInsets.all(8.0),
          child: Text('Similar products'),),

          Container(
              height: 360.0,
              child: Similar_products()),

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
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    }, {
      "name": "Red dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_single_prod(
      {this.prod_name,
        this.prod_picture,
        this.prod_old_price,
        this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
            tag: Text("hero 1"),
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  //here we passing the products values to Product Detail!
                  new MaterialPageRoute(builder: (context) => ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                  )),
                ),
                child: GridTile(
                    footer: Container(
                        color: Colors.white70,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)),
                            Expanded(child: Text("\$${prod_price}",style: TextStyle(color: Colors.red),))
                          ],
                        )
                    ),
                    child: Image.asset(
                      prod_picture,
                      fit: BoxFit.cover,
                    )),
              ),
            )),
      ),
    );
  }
}




