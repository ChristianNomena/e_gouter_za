class Order {
  Order(
    this.id,
    this.designation,
    this.unitPrice,
    this.quantity,
    this.amount,
  );

  final int id;
  final String designation;
  final int unitPrice;
  final int quantity;
  final int amount;

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      json["id"],
      json["designation"],
      json["unit_price"],
      json["quantity"],
      json["amount"],
    );
  }
}
