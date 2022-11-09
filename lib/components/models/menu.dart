class Meal {
  final String name;
  final String image;
  final String description;
  final int price;
  final bool wishList;
  final double rating;

  Meal(
      {required this.name,
      required this.price,
      required this.image,
      required this.wishList,
      required this.description,
      required this.rating});
}
