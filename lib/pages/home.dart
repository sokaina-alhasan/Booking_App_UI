import 'package:bookingapp/pages/icon_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookingapp/pages/image_card.dart';
import 'package:bookingapp/pages/places.dart';
import 'package:bookingapp/pages/image_cards.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.menu,color: Colors.black,size: 30,),onPressed: (){},),
                IconButton(icon: Icon(Icons.person_outline,color: Colors.black,size: 40,),onPressed: (){},),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: RichText(
                  text:TextSpan(
                    children: [
                      TextSpan(
                        text:'Hello, ',
                        style: TextStyle(
                                  fontSize: 38,
                                  fontWeight:FontWeight.w700,
                                  color: Colors.pinkAccent),
                      ),TextSpan(
                        text:'What are you\n looking for? ',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight:FontWeight.w500 ,
                            color: Colors.black,
                            letterSpacing: 1,
                        ),
                      ),
                    ]
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconCard(iconData: Icons.home, text: 'Accomodation',),
                IconCard(iconData: Icons.directions_bike, text: 'Experiences',),
                IconCard(iconData: Icons.flight, text: 'Flights',),
                IconCard(iconData: Icons.directions, text: 'Adventure',),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Best Experiences' ,style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Colors.black
                  ),),
                ),
                IconButton(icon: Icon(Icons.more_horiz, color: Colors.black,size: 25,),onPressed: (){},),
              ],
            ),
            SizedBox(height: 20,),
            ImageCards(),
            SizedBox(height: 80,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(icon: Icon(Icons.home,color: Colors.pink,size: 40,),onPressed: (){},),
                  IconButton(icon: Icon(Icons.search,color: Colors.black,size: 35),onPressed: (){},),
                  IconButton(icon: Icon(Icons.favorite_border,color: Colors.black,size: 35),onPressed: (){},),
                  IconButton(icon: Icon(Icons.person_outline,color: Colors.black,size: 35),onPressed: (){},),
                ],
              ),
            )



          ],
        ),
      ),
    ),
    );
  }
}
