import 'package:flutter/material.dart';

class Hotel {
  int id;
  String title;
  String imageUrl;
  double price;
  int qty;

  Hotel(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.price,
      @required this.qty});
}

List<Hotel> hotelList = [
  Hotel(
      id: 1,
      title: 'Keemala Phuket (Bird Nest Villa)',
      imageUrl:
          'https://pix6.agoda.net/hotelImages/978664/-1/b37491779d8db39f9c07cfdab94101fd.jpg?s=1024x768',
      price: 14212,
      qty: 1),
  Hotel(
      id: 2,
      title: 'Four Seasons Resort Koh Samui (Residence Villa)',
      imageUrl:
          'https://cdn.kiwicollection.com/media/property/PR003499/xl/003499-01-Aerial-Four-Seasons-Resort-Koh-Samui.jpg?cb=1560792098',
      price: 18832,
      qty: 1),
  Hotel(
      id: 3,
      title: 'Rayavadee Krabi (Pool Pavilion)',
      imageUrl:
          'https://pix6.agoda.net/hotelImages/108/10835/10835_16071113590044562950.jpg?s=1024x768',
      price: 20282,
      qty: 1),
  Hotel(
      id: 4,
      title: 'The Siam Hotel Bangkok (Siam Suite)',
      imageUrl:
          'https://pix10.agoda.net/hotelImages/296/296765/296765_13121811550017924657.jpg?s=1024x768',
      price: 22000,
      qty: 1),
  Hotel(
      id: 5,
      title: 'Banyan Tree Phuket (Banyan Pool Villa)',
      imageUrl:
          'https://pix6.agoda.net/hotelImages/108/10884/10884_15080710150033836710.jpg?s=1024x768',
      price: 21028,
      qty: 1),
  Hotel(
      id: 6,
      title: 'Amanpuri',
      imageUrl:
          'https://www.aman.com/sites/default/files/styles/gallery_carousel_large/public/garden_pavilion_2_office_19076.jpg?itok=4yN3E7MW',
      price: 26000,
      qty: 1),
  Hotel(
      id: 7,
      title: 'Four Seasons Tented Camp Golden Triangle',
      imageUrl:
          'https://www.fourseasons.com/content/dam/fourseasons/images/web/CHR/CHR_588_aspect16x9.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg',
      price: 35000,
      qty: 1),
  Hotel(
      id: 8,
      title: 'Six Senses Yao Noi (Ocean Panorama Pool Villa)',
      imageUrl:
          'https://pix6.agoda.net/hotelImages/21979532/300883523/c92bda81da5e2b69b16adecec2347fa8.jpg?s=1024x768',
      price: 31789,
      qty: 1),
  Hotel(
      id: 9,
      title: 'Rosewood Phuket (Garden Twin)',
      imageUrl:
          'https://pix6.agoda.net/hotelImages/283/2838322/2838322_19060412040074949846.jpg?s=1024x768',
      price: 22514,
      qty: 1),
  Hotel(
      id: 10,
      title: 'Soneva Kiri (Bayview Pool Villa Suite)',
      imageUrl:
          'https://pix6.agoda.net/hotelImages/159/159165/159165_17061310380053630195.jpg?s=1024x768',
      price: 158000,
      qty: 1),
];
