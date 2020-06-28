import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookingapp/pages/places.dart';
import 'package:bookingapp/pages/details.dart';
class ImageCard extends StatelessWidget {
  String name;
  Place place;
  String picture;
  int days;
  ImageCard({@required this.place,@required this.picture,@required this.days,@required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>Details(place: place)));
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(62,168,147,201),
                offset: Offset(0,9),
                blurRadius: 14,
              )
            ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Image.asset('images/$picture',
                  height: 260,
                  width: 200,
                fit: BoxFit.cover,
                ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(1),
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.05),
                          Colors.black.withOpacity(0.025),
                        ]
                    ),
                  ),child: Padding(
                  padding: EdgeInsets.only(top:8.0),
                  child: Container(),
                  
                ),
                ),
              ),
                Positioned(
                  bottom: 30,
                  left: 5,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: '$name\n',style: TextStyle(fontSize: 22.0)),
                          ]
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 5,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today,color: Colors.white,size: 14.0,),
                          SizedBox(width: 5.0,),
                          Text('$days days',style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
