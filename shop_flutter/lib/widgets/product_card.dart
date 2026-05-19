import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "../models/product.dart";
import "../providers/product_provider.dart";
import "../screens/details_screen.dart";
class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product
  });
@override
  Widget build(BuildContext context) {
    final provider = context.watch<ProductProvider>();
    final isFav = provider.isFavourite(product);
    return Card (
      child: ListTile(
      leading: Image.network(
        product.image,
        width:50
      ),
      title:Text(product.title),
      subtitle: Text('\$${product.priceInfo.price}'),
      trailing: IconButton(
        icon: Icon(
          isFav
          ? Icons.favorite
          : Icons.favorite_border,
          color:Colors.red
        ),
        onPressed:() {
          provider.toggleFavourite(product);
        },
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => 
        DetailsScreen(product:product)
        ));
      },
      )
    );
  }
}