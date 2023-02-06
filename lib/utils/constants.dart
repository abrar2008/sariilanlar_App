import 'package:flutter/material.dart';

sizeheight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

//width
sizeWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

const String imgpath = 'assets/images';
const String iconpath = 'assets/icons';

List<String> productImgList = [
  'assets/images/car1.jpg',
  'assets/images/house1.jpg',
  'assets/images/body1.jpg',
  'assets/images/laptop.jpg',
  'assets/images/car2.jpg',
  'assets/images/laptop2.jpg',
  'assets/images/house1.jpg',
  'assets/images/car1.jpg',
  'assets/images/laptop3.jpg',
];List<String> RealLImgList = [
  'assets/images/car1.jpg',
  'assets/images/house1.jpg',
  'assets/images/body1.jpg',
  'assets/images/laptop.jpg',
  'assets/images/car2.jpg',
  
  
  
];
const TextStyle kh3=TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16
);
const TextStyle kh2=TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18
);
const TextStyle kh1=TextStyle(
  fontWeight: FontWeight.bold,
      fontSize: 18
);
class NoficationListModel {
  String? name;
  String? description;
  String? date;
  String? image;
  NoficationListModel({this.name, this.description, this.date, this.image});
}

List<NoficationListModel> NotificationList = [
  NoficationListModel(
      name: "Product Discount 10% Off",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      date: "Today 12:30pm",
      image: 'assets/images/car1.jpg'),
  NoficationListModel(
      name: "Product Discount 10% Off",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      date: "Today 12:30pm",
      image: 'assets/images/body1.jpg'),
  NoficationListModel(
      name: "Product Discount 10% Off",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      date: "Today 12:30pm",
      image: 'assets/images/house1.jpg'),
  NoficationListModel(
      name: "Product Discount 10% Off",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      date: "Today 12:30pm",
      image: 'assets/images/laptop.jpg'),
  NoficationListModel(
      name: "Product Discount 10% Off",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      date: "Today 12:30pm",
      image: 'assets/images/car2.jpg'),
  NoficationListModel(
      name: "Product Discount 10% Off",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      date: "Today 12:30pm",
      image: 'assets/images/body1.jpg'),
  NoficationListModel(
      name: "Product Discount 10% Off",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      date: "Today 12:30pm",
      image: 'assets/images/laptop2.jpg'),
  NoficationListModel(
      name: "Product Discount 10% Off",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      date: "Today 12:30pm",
      image: 'assets/images/car1.jpg'),
  NoficationListModel(
      name: "Product Discount 10% Off",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
      date: "Today 12:30pm",
      image: 'assets/images/house1.jpg'),
];
List<String> cityImg = [
  'assets/images/city2.jpg',
  'assets/images/city5.jpg',
  'assets/images/city3.jpg',
  'assets/images/city1.jpg',
  'assets/images/city5.jpg',
  'assets/images/city6.jpg',
  'assets/images/city1.jpg',
  'assets/images/city2.jpg',
  'assets/images/city4.jpg',
  'assets/images/city3.jpg'
];