class ProductDetails {
  String imageAddress;
  String coffeeName;
  String? additionalIng;
  int price;
  double ratings;
  ProductDetails(
      {required this.imageAddress,
        required this.coffeeName,
      this.additionalIng,
      required this.price,
      required this.ratings});
}

List ProductList = [
  ProductDetails(imageAddress: 'images/coffee1.jpg',coffeeName: 'Espresso',additionalIng: 'with milk', price: 200, ratings: 4.5),
  ProductDetails(imageAddress: 'images/coffee2.jpg',coffeeName: 'Cappucino',additionalIng: 'with milk', price: 300, ratings: 4.0),
  ProductDetails(imageAddress: 'images/coffee3.jpg',coffeeName: 'Latte',additionalIng: 'with milk', price: 200, ratings: 4.6),
  ProductDetails(imageAddress: 'images/coffee4.jpeg',coffeeName: 'Americana',additionalIng: 'with milk', price: 350, ratings: 4.8),
  ProductDetails(imageAddress: 'images/coffee2.jpg',coffeeName: 'Cortado',additionalIng: 'with milk', price: 300, ratings: 4.8),
  ProductDetails(imageAddress: 'images/coffee2.jpg',coffeeName: 'Macchiato',additionalIng: 'with milk', price: 450, ratings: 4.8),
];

List<String> CategoriesTitles = [
  'Hot Tea',
  'Ice Teas',
  'Drinks',
  'Hot Teas',
  'Bakery',
  'Hot Tea',
  'Drinks'
];
