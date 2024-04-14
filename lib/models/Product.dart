// class Product {
//   final String? title, image;

//   Product({this.title, this.image});
// }

// List<Product> demo_products = [
//   Product(title: "Dairy Milk", image: "assets/images/img_1.png"),
//   Product(title: "KitKat", image: "assets/images/img_2.png"),
//   Product(title: "5Star", image: "assets/images/img_3.png"),
//   Product(title: "Munch", image: "assets/images/img_4.png"),
//   Product(title: "Perk", image: "assets/images/img_5.png"),
// ];

class Product {
  final String? title, image;
  final double price;
  int quantity;

  Product({this.title, this.image,this.price=20.0, this.quantity = 1});

  void increment() {
    quantity++;
  }

  void decrement() {
    if (quantity > 1) {
      quantity--;
    }
  }
}

List<Product> demo_products = [
  Product(title: "Dairy Milk", image: "assets/images/img_1.png",price: 20.0),
  Product(title: "KitKat", image: "assets/images/img_2.png",price: 20.0),
  Product(title: "5Star", image: "assets/images/img_3.png",price: 20.0),
  Product(title: "Munch", image: "assets/images/img_4.png",price: 20.0),
  Product(title: "Perk", image: "assets/images/img_5.png",price: 20.0),
];