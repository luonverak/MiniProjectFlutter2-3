import 'package:flutter/material.dart';
import '../widget/appbar_widget.dart';
import '../widget/category_widget.dart';
import '../widget/recommend.dart';
import '../widget/slide.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 2));
          },
          child: ListView(
            children: [
              AppBarWidget(),
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
      ),
    );
  }
}
