import 'package:project1/model/category_model.dart';

class ProductModel {
  final int id;
  final String title;
  final double price;
  final double rate;
  final List size;
  final String description;
  late int counter;
  final String image;
  final List morePreview;
  late bool favorite;
  final String releaseDate;
  final int categoryId;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.rate,
    required this.size,
    required this.description,
    required this.counter,
    required this.image,
    required this.morePreview,
    required this.favorite,
    required this.releaseDate,
    required this.categoryId,
  });
}

final List<ProductModel> listModel = [
  ProductModel(
      id: 1,
      title: 'Air Zero 2',
      price: 20,
      rate: 2.3,
      size: [40, 41, 42, 43],
      description:
          'Lightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weightLightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weightLightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weightLightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weightLightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weight',
      counter: 1,
      image: 'asset/image/Madrid_Heathered-Grey_Feature-Float-1380.webp',
      morePreview: [
        'https://samuelhubbard.com/cdn/shop/products/free_tanwxhd_main_900x900.png?v=1658787859',
        'https://images.ctfassets.net/hnk2vsx53n6l/3xUO0Z7orO5Yhvnk79aJJR/438e3d4e2afefeec8965510d80d322e3/60c6640d3e565aba55128ac1d790747dd3891bc7.png?fm=webp',
        'https://cdn.shopify.com/s/files/1/1104/4168/products/TD1MGYS_SHOE_ANGLE_GLOBAL_MENS_TREE_DASHERS_GEYSER_26f5ca99-9d93-4a66-b4c2-38c140f47007.png',
      ],
      favorite: false,
      releaseDate: '12/01/2024',
      categoryId: listCategory[5].id),
  ProductModel(
    id: 1,
    title: 'Air Rider 7',
    price: 20,
    rate: 2.3,
    size: [40, 41, 42, 43],
    description:
        'Lightweight running shoes have come a long way as both racing flats and daily trainers. Once upon a time, to shave grams on a shoe and get it down to a competitive weight',
    counter: 1,
    image: 'asset/image/renew-ride-3-mens-road-running-shoes-7hTSLw.png',
    morePreview: [
      'https://samuelhubbard.com/cdn/shop/products/free_tanwxhd_main_900x900.png?v=1658787859',
      'https://cld.accentuate.io/5353320710301/1663094662150/Madrid_Heathered-Grey_Feature-Float-1380.png?v=1669223444554&options=w1000',
      'https://cdn.shopify.com/s/files/1/1104/4168/products/TD1MGYS_SHOE_ANGLE_GLOBAL_MENS_TREE_DASHERS_GEYSER_26f5ca99-9d93-4a66-b4c2-38c140f47007.png',
    ],
    favorite: false,
    releaseDate: '12/01/2024',
    categoryId: listCategory[5].id,
  ),
];
