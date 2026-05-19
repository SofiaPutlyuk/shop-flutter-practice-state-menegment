import "package:flutter/material.dart";
class CustomSearchBar extends StatelessWidget {
final Function(String) onChanged;
const CustomSearchBar({
  super.key,
  required this.onChanged
});
@override
  Widget build(BuildContext context) {
   return Padding(
    padding: const EdgeInsets.all(12),
    child: TextField(
    onChanged: onChanged,
    decoration: InputDecoration(
      hintText: "Search product ...",
      prefixIcon: const Icon(Icons.search),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      )
    ),
    ),
   );
  }
}