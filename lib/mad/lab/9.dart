import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Model class
class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product("Laptop", 45000),
      Product("Mobile", 18000),
      Product("Headphones", 1500),
      Product("Keyboard", 1200),
      Product("Mouse", 700),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product List"),
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              title: Text(products[index].name),
              subtitle: Text(
                "Price: ₹${products[index].price}",
              ),
            );
          },
        ),
      ),
    );
  }
}