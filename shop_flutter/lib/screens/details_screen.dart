import "package:flutter/material.dart";
import "../models/product.dart";
class DetailsScreen extends StatelessWidget {
final Product product;
const DetailsScreen({
  super.key,
  required this.product
});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(product.title)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          Center(child: Image.network(product.image, height: 200),),
          const SizedBox(height: 20),
          Text(product.title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          ),
          const SizedBox(height: 10),
          Text(product.description),
          const SizedBox(height: 20),
          Text(
          'Price: \${product.priceInfo.price}',
          style: const TextStyle(
            fontSize: 20,
            color:Colors.green
          ),
          ),
          const SizedBox(height: 10),
          Text(
          "Rating: ${product.rating.rate}"
          )
        ],)
      )
    );
  }
}