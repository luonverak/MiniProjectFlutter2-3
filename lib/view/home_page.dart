import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:project1/model/product_model.dart';
import 'package:whatsapp_camera/whatsapp_camera.dart';
import '../widget/category_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final files = ValueNotifier(<File>[]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.3,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  alignment: Alignment.center,
                  child: const ListTile(
                    leading: Icon(Icons.search),
                    title: Text("What are you looking for?"),
                  ),
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap: () async {
                    List<File>? res = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WhatsappCamera(),
                      ),
                    );
                    if (res != null) files.value = res;
                  },
                  child: const Icon(
                    Icons.camera_alt,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 7),
                const badges.Badge(
                  badgeContent: Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.shopping_cart, size: 28),
                )
              ],
            ),
            const SizedBox(height: 20),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                viewportFraction: 1,
                enableInfiniteScroll: true,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(seconds: 5),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.category_outlined, size: 28),
                Text(
                  'Category',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(height: 10),
            const CategoryWidget(),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.recommend_outlined, size: 28),
                Text(
                  'Recommended',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'See more',
                  style: TextStyle(fontSize: 16, color: Colors.red),
                )
              ],
            ),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.7,
              ),
              itemCount: listModel.length,
              itemBuilder: (context, index) => recommendItem(listModel[index]),
            ),
          ],
        ),
      ),
    );
  }

  Widget recommendItem(ProductModel productModel) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(blurRadius: 3, color: Color.fromARGB(255, 209, 209, 209))
          ]),
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
    );
  }
}
