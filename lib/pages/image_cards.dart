import 'package:flutter/material.dart';
import 'package:bookingapp/pages/places.dart';
import 'package:bookingapp/pages/image_card.dart';
class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Place> images=[
    Place(place: 'Australia',image: 'Australia.jpg',days: 7),
    Place(place: 'India',image: 'india.jpg',days: 15),
    Place(place: 'Bali',image: 'Bali.jpg',days: 10),
    Place(place: 'Dubai',image: 'Dubai.jpg',days: 3),
    Place(place: 'London',image: 'london.jpg',days: 5),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context,index){
          return ImageCard(
            place: images[index],
            name: images[index].place,
            days: images[index].days,
            picture: images[index].image,
          );
        },
      ),
    );
  }
}
