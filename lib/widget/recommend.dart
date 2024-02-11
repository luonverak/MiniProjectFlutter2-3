import 'package:flutter/material.dart';
import 'package:project1/view/detail_screen.dart';

import '../model/product_model.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1 / 1.7,
      ),
      itemCount: listModel.length,
      itemBuilder: (context, index) => recommendItem(context, listModel[index]),
    );
  }

  Widget recommendItem(BuildContext context, ProductModel productModel) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              productModel: productModel,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(blurRadius: 3, color: Color.fromARGB(255, 209, 209, 209))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                    image: DecorationImage(
                      image: AssetImage(productModel.image),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_border),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        "New",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Text(
              productModel.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '\$ ${productModel.price}',
              style: const TextStyle(
                fontSize: 17,
                color: Colors.orange,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              productModel.description,
              style: const TextStyle(
                fontSize: 15,
              ),
              maxLines: 2,
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.orange),
                Text(
                  '${productModel.rate}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  maxLines: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
