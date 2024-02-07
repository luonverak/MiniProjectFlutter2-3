import 'package:flutter/material.dart';

class CategoryModel {
  final int id;
  final String name;
  final Icon icon;

  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
  });
}

final List<CategoryModel> listCategory = [
  CategoryModel(
    id: 1,
    name: 'Watch',
    icon: const Icon(Icons.watch),
  ),
  CategoryModel(
    id: 2,
    name: 'Bags',
    icon: const Icon(Icons.badge),
  ),
  CategoryModel(
    id: 3,
    name: 'Beauty',
    icon: const Icon(Icons.wb_iridescent_sharp),
  ),
  CategoryModel(
    id: 4,
    name: 'Clothing',
    icon: const Icon(Icons.closed_caption_sharp),
  ),
  CategoryModel(
    id: 5,
    name: 'Accessories',
    icon: const Icon(Icons.accessibility_outlined),
  ),
  CategoryModel(
    id: 6,
    name: 'Shoe',
    icon: const Icon(Icons.shopify_rounded),
  ),
  CategoryModel(
    id: 7,
    name: 'LifeStyle',
    icon: const Icon(Icons.style),
  ),
  CategoryModel(
    id: 7,
    name: 'LifeStyle',
    icon: const Icon(Icons.style),
  ),
  CategoryModel(
    id: 7,
    name: 'LifeStyle',
    icon: const Icon(Icons.style),
  ),
];
