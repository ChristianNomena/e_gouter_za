class Income {
  Income(
    this.id,
    this.restaurant,
    this.total,
  );

  final int id;
  final String restaurant;
  final String total;

  factory Income.fromJson(Map<String, dynamic> json) {
    return Income(
      json["id"],
      json["restaurant"],
      json["total"],
    );
  }
}
