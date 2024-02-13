import 'package:flutter/material.dart';
import 'package:project1/model/category_model.dart';
import 'package:project1/model/product_model.dart';
import 'package:project1/view/detail_screen.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  late List listByCategory = listModel
      .where((element) => element.categoryId == categoryModel.id)
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryModel.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(
            listByCategory.length,
            (index) => itemByCategory(context, listByCategory[index]),
          ),
        ),
      ),
    );
  }

  Widget itemByCategory(BuildContext context, ProductModel productModel) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(productModel: productModel),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(productModel.image),
          ),
        ),
        child: Column(
          children: [
            Text(
              productModel.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
