import 'package:flutter/material.dart';
import 'package:untitled/data/models/product_model.dart';

class ProductsItem extends StatelessWidget {
  ProductModel product;

  ProductsItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: ListTile(
          title: Text(product.title.toString()),
          subtitle: Image.network(
            product.image.toString(),
            height: 60,
          )),
    );
  }
}
