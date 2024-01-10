class Product {
  final String id;
  final int price;
  final int discount;
  final String brand;
  final String creationDate;
  final String image;
  final String name;
  final bool isPopular;

  Product({
    required this.id,
    required this.price,
    required this.discount,
    required this.brand,
    required this.creationDate,
    required this.image,
    required this.name,
    required this.isPopular,
  });

  factory Product.fromFirestore(Map<String, dynamic> snapshot) {
    return Product(
      id: snapshot['id'],
      price: snapshot['price'],
      discount: snapshot['discount'],
      brand: snapshot['brand'],
      creationDate: snapshot['creationDate'],
      image: snapshot['image'],
      name: snapshot['name'],
      isPopular: snapshot['popular'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'price': price,
      'discount': discount,
      'brand': brand,
      'creationDate': creationDate,
      'image': image,
      'name': name,
      'popular': isPopular,
    };
  }
}
