import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../widgets/error_widget.dart';
import '../widgets/loading_widget.dart';
import '../widgets/product_card.dart';
import '../widgets/search_bar.dart';
import 'favourites_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 @override 
 State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
String search = "";
@override
  void initState() {
    super.initState();
    Future.microtask(() {
    context
    .read<ProductProvider>()
    .fetchProduct();
    });
  }
  @override
   Widget build(BuildContext context){
    final provider = context.watch<ProductProvider>();
    final filteredProducts = provider.products.where((product) {
    return product.title
    .toLowerCase()
    .contains(search.toLowerCase());
    }).toList();
    return Scaffold(
      appBar: AppBar(
     title:  Text("Shop")
      ),
    );
   }
}