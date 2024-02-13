import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project1/view/search_screen.dart';
import 'package:whatsapp_camera/whatsapp_camera.dart';

import 'package:badges/badges.dart' as badges;

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key});
  final files = ValueNotifier(<File>[]);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchScreen(),
              ),
            );
          },
          child: Container(
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
    );
  }
}
