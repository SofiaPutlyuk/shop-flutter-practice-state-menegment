import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../widgets/product_card.dart';
class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});
  @override
  Widget build(BuildContext context){
    final provider = context.watch<ProductProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourites"),
      ),
      body: ListView.builder(
        itemCount: provider.favourites.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: provider.favourites[index]
             );
        },
        )
    );
  }
}