import "price_info.dart";
import "Rating.dart";
class Product{
final int id;
final String title;
final String description;
final String image;
final PriceInfo priceInfo;
final Rating  rating;
Product({
  required this.id,
  required this.title,
  required this.description,
  required this.image,
  required this.priceInfo,
  required this.rating
});
factory Product.fromJson(Map<String,dynamic> json){
  return Product(
    id:json["id"],
    title:json["title"],
    description: json["description"],
    image: json["image"],
    priceInfo: PriceInfo(
      price:(json["price"] as num).toDouble(),
      currency:json["currency"]
    ),
    rating: Rating.fromJson(json["rating"])
  );
}
}