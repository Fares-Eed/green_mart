// data returned from backend as Map or List
// create model for map
// parsing from list<map> to list<model>
// use model in UI

import 'package:flutter/cupertino.dart';

class ProductModel {
  String? id;
  String? image;
  String? title;
  String? price;
  String? quantityPerPrice;
  String? description;
  String? tag;
  Color? color;
  Color? borderColor;

  ProductModel({
    this.id,
    this.image,
    this.title,
    this.price,
    this.quantityPerPrice,
    this.description,
    this.tag,
    this.color,
    this.borderColor
  });
}

List<ProductModel> offerProducts = [
  ProductModel(
    id: '1',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    title: 'Apple',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    title: 'Banana',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '3',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    title: 'Orange',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
    ProductModel(

   id: '5',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    title: 'Apple',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  
  ProductModel(
    id: '6',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    title: 'Banana',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '7',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    title: 'Orange',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '8',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
];

List<ProductModel> bestSellingProducts = [
  ProductModel(
    id: '1',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    title: 'Orange',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '3',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    title: 'Apple',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    title: 'Banana',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
    ProductModel(
    id: '5',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    title: 'Orange',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '6',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '7',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    title: 'Apple',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '8',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    title: 'Banana',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
];

List<ProductModel> exploreProducts = [
  ProductModel(
    id: '1',
    image:'assets/images/frashFruitsVegetable.png',
    title: 'Frash Fruits\n & Vegetable',
    color: Color(0x1A53B175),
    borderColor: Color(0xB253B175)
  ),
  ProductModel(
    id: '2',
    image: 'assets/images/cookingOilGheeple.png',
    title: 'Cooking Oil\n & Ghee',
    color: Color(0x1AF8A44C),
    borderColor: Color(0xB2F8A44C)
  ),
  ProductModel(
    id: '3',
    image: 'assets/images/meatFish.png',
    title: 'Meat & Fish',
        color: Color(0x1AF7A593),
    borderColor: Color(0xB2F7A593)
  ),
  ProductModel(
    id: '4',
    image: 'assets/images/bakerySnacks.png',
    title: 'Bakery & Snacks',
        color: Color(0x1AD3B0E0),
    borderColor: Color(0xB2D3B0E0)
  ),
  ProductModel(
    id: '5',
    image: 'assets/images/dairyeggs.png',
    title: 'Dairy & Eggs',
        color: Color(0x1AFDE598),
    borderColor: Color(0xB2FDE598)
  ),
  ProductModel(
    id: '6',
    image: 'assets/images/Beverages.png',
    title: 'Beverages',
        color: Color(0x1AB7DFF5),
    borderColor: Color(0xB2B7DFF5)
  ),
   ProductModel(
    id: '7',
    image:'assets/images/frashFruitsVegetable.png',
    title: 'Frash Fruits\n & Vegetable',
    color: Color(0x1A53B175),
    borderColor: Color(0xB253B175)
  ),
  ProductModel(
    id: '8',
    image: 'assets/images/cookingOilGheeple.png',
    title: 'Cooking Oil\n & Ghee',
    color: Color(0x1AF8A44C),
    borderColor: Color(0xB2F8A44C)
  ),
  ProductModel(
    id: '9',
    image: 'assets/images/meatFish.png',
    title: 'Meat & Fish',
        color: Color(0x1AF7A593),
    borderColor: Color(0xB2F7A593)
  ),
  ProductModel(
    id: '10',
    image: 'assets/images/bakerySnacks.png',
    title: 'Bakery & Snacks',
        color: Color(0x1AD3B0E0),
    borderColor: Color(0xB2D3B0E0)
  ),
  ProductModel(
    id: '11',
    image: 'assets/images/dairyeggs.png',
    title: 'Dairy & Eggs',
        color: Color(0x1AFDE598),
    borderColor: Color(0xB2FDE598)
  ),
  ProductModel(
    id: '12',
    image: 'assets/images/Beverages.png',
    title: 'Beverages',
        color: Color(0x1AB7DFF5),
    borderColor: Color(0xB2B7DFF5)
  ),
];

List<ProductModel> allProducts = [
  ProductModel(
    id: '1',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    title: 'Orange',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '3',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    title: 'Apple',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    title: 'Banana',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '1',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    title: 'Orange',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '3',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    title: 'Apple',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    title: 'Banana',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '1',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    title: 'Orange',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '3',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    title: 'Apple',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    title: 'Banana',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '1',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    title: 'Orange',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '3',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    title: 'Apple',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    title: 'Banana',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '1',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    title: 'Orange',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '3',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    title: 'Apple',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    title: 'Banana',
    price: '\$10.99',
    quantityPerPrice: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
];