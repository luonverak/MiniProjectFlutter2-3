import 'package:flutter/material.dart';
import 'package:project1/model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [BoxShadow(blurRadius: 5, color: Colors.grey)],
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          for (int i = 0;
              i < (listCategory.length < 8 ? listCategory.length : 8);
              i++)
            i < 7
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        listCategory[i].icon,
                        Text(
                          listCategory[i].name,
                        ),
                      ],
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(Icons.more_horiz, size: 30),
                        Text('More'),
                      ],
                    ),
                  )
        ],
      ),
    );
  }
}
