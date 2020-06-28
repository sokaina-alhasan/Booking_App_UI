import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookingapp/pages/places.dart';
class Details extends StatelessWidget {
  Place place;
  Details({this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Image.asset(
                    'images/${place.image}',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.fill,),
                ),
              ),
            Padding(
              padding: EdgeInsets.all(14),
              child: Row(
                children: [
                  Icon(Icons.calendar_today,color: Colors.grey,size: 20,),
                  SizedBox(width: 5,),
                  Text('${place.days} days',style: TextStyle(color: Colors.grey,fontSize: 20),),
                ],
              ),
            ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: '${place.place}\n',
                                 style:TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey[900])),
                        TextSpan(text: 'Of all the natural resources given to us by nature, water is one of the most essential one.\nWe need water for drinking, cooking, irrigation, and transport among other important purposes that support our daily life. The evolvement of life on earth required water\, without which life on earth would not have happened.',
                                 style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey)),
                      ]
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                    color: Colors.pink,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(text: 'Price\n',style: TextStyle(fontSize: 20),),
                            TextSpan(text: '\$300',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text('Book a Tour',
                                        style:TextStyle(
                                            color: Colors.pink,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 20,
            left: 10,
            child:GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios,size: 38,color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
