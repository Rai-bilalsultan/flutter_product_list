import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';
import '../widgets/product_tile.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(
      title: "iPhone 15",
      description: "Latest Apple smartphone with A16 Bionic chip.",
      price: 999.99,
      icon: Icons.phone_iphone,
    ),
    Product(
      title: "MacBook Pro",
      description: "Powerful laptop with M2 chip and Retina display.",
      price: 1999.99,
      icon: Icons.laptop_mac,
    ),
    Product(
      title: "AirPods Pro",
      description: "Wireless earbuds with active noise cancellation.",
      price: 249.99,
      icon: Icons.headset,
    ),
    Product(
      title: "Apple Watch",
      description: "Stylish smartwatch with health tracking features.",
      price: 399.99,
      icon: Icons.watch,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: products[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
