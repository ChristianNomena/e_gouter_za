class Shop {
  Shop(this.id, this.location);

  final int id;
  final String location;

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      json["id"],
      json["location"],
    );
  }
}
