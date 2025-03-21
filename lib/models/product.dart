import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final double price;
  final IconData icon; // Use icons instead of images

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.icon,
  });
}
