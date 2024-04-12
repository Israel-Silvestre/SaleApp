import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String imagePath;
  final String description;
  final String category;

  Product({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    required this.category,
  });
}
