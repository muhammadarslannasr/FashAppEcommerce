import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_carousel: 'images/cats/tshirt.png',
            image_caption: 'shirt',
          ),
          Category(
            image_carousel: 'images/cats/dress.png',
            image_caption: 'dress',
          ),
          Category(
            image_carousel: 'images/cats/jeans.png',
            image_caption: 'pants',
          ),
          Category(
            image_carousel: 'images/cats/formal.png',
            image_caption: 'fromal',
          ),
          Category(
            image_carousel: 'images/cats/informal.png',
            image_caption: 'informal',
          ),
          Category(
            image_carousel: 'images/cats/accessories.png',
            image_caption: 'accessories',
          ),
          Category(
            image_carousel: 'images/cats/shoe.png',
            image_caption: 'shoes',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_carousel;
  final String image_caption;

  Category({this.image_carousel, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 100,
        child: ListTile(
          title: Image.asset(image_carousel,
          width: 100,
          height: 80,),
          subtitle: Container(
            alignment: Alignment.topCenter,
              child: Text(image_caption,style: TextStyle(fontSize: 12.0),)),
        ),
      ),
    ),);
  }
}
