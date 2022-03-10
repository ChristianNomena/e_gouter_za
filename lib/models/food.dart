class Food {
  Food(this.id, this.name, this.price, this.image);

  final int id;
  final String name;
  final int price;
  final String image;

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      json["id"],
      json["name"],
      json["price"],
      json["image"],
    );
  }
}
