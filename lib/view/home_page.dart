import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:project1/model/product_model.dart';
import 'package:whatsapp_camera/whatsapp_camera.dart';
import '../widget/category_widget.dart';
import '../widget/recommend.dart';
import '../widget/slide.dart';

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
            const SlideWidget(),
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
            const RecommendedWidget(),
          ],
        ),
      ),
    );
  }
}
