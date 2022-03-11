class Food {
  Food(this.id, this.name, this.price, this.image, this.restaurant);

  final int id;
  final String name;
  final int price;
  final String image;
  final String restaurant;

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      json["id"],
      json["name"],
      json["price"],
      json["image"],
      json["restaurant"],
    );
  }
}
