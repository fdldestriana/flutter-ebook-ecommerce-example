import 'package:ecommerce_example/data/model/product.dart';

List<Product> _productList = [
  Product(
      id: "A2rBc4dEfG",
      price: 150,
      discount: 0,
      brand: "Nike",
      creationDate: "May 8, 2023 9:04:59 PM",
      image: "assets/shoes/a_bathing_ape_bapesta.jpeg",
      name: "A Bathing Ape Bapesta",
      isPopular: false),
  Product(
      id: "H1iJkLmNoP",
      price: 120,
      discount: 10,
      brand: "Adidas",
      creationDate: "May 8, 2023 9:04:59 PM",
      image: "assets/shoes/adidas_samba.jpeg",
      name: "Adidas Samba",
      isPopular: false),
  Product(
      id: "QsRtUvWxYz",
      price: 130,
      discount: 25,
      brand: "Converse",
      creationDate: "May 8, 2023 9:04:59 PM",
      image: "assets/shoes/converse_jack_purcell.jpeg",
      name: "Converse Jack Purcell",
      isPopular: true),
  Product(
      id: "5aB6cD7eF8",
      price: 145,
      discount: 15,
      brand: "Nike",
      creationDate: "May 8, 2023 9:04:59 PM",
      image: "assets/shoes/nike_air_huarache.jpeg",
      name: "Nike Air Huarache",
      isPopular: false),
  Product(
      id: "G9hIjKlMn0",
      price: 155,
      discount: 0,
      brand: "Nike",
      creationDate: "May 8, 2023 9:04:59 PM",
      image: "assets/shoes/nike_air_max_1.jpeg",
      name: "Nike Air Max",
      isPopular: false),
  Product(
      id: "PqRsTuVwXy",
      price: 155,
      discount: 0,
      brand: "Rebook",
      creationDate: "May 8, 2023 9:04:59 PM",
      image: "assets/shoes/rebook_pump.jpeg",
      name: "Rebook Pump",
      isPopular: true),
  Product(
      id: "Z1a2b3C4d5",
      price: 115,
      discount: 5,
      brand: "Vans",
      creationDate: "May 8, 2023 9:04:59 PM",
      image: "assets/shoes/vans_half_cab.jpeg",
      name: "Vans Half Cab",
      isPopular: false),
  Product(
      id: "E6fGhI7jK8",
      price: 160,
      discount: 5,
      brand: "Wilson",
      creationDate: "May 8, 2023 9:04:59 PM",
      image: "assets/shoes/wilson_john_wooden.jpeg",
      name: "Wilson John Wooden",
      isPopular: false)
];

List<Product> get productList => _productList;
