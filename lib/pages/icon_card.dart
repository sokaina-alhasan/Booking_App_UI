import 'package:flutter/material.dart';

 class IconCard extends StatelessWidget {
   String text;
   IconData iconData;
   IconCard({this.iconData,this.text});
   @override
   Widget build(BuildContext context) {
     return Container(
       height: 80.0,
       child: Column(
         children: [
           Container(
             decoration: BoxDecoration(
               color: Colors.pink[100],
               borderRadius: BorderRadius.circular(10),
             ),
             child: IconButton(
               onPressed: (){},
               icon: Icon(iconData, size: 30.0,color: Colors.pink,),
             ),
           ),
           Text(text,style: TextStyle(fontSize: 10.0),),
         ],
       ),
     );
   }
 }

