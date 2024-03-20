import 'package:copernican/Models/Star.dart';
import 'package:flutter/material.dart';

class StarCard extends StatelessWidget {
  final Star star;
  const StarCard({super.key,required this.star});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            star.imageURL!,
          ),
        ),
      ),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(175, 51, 85, 1.0),
                Colors.transparent
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  star.title!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Text(
                  star.shortDes!,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[350],
                  ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
