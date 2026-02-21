class Product {
  final String id;
  final String name;
  final String description;
  final double price;

  //Constructor
  Product(this.id, this.name, this.description, this.price);

  //convert json to Map
  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        price = json['price'];

  //convert map to json
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'description': description, 'price': price};
  }
}
