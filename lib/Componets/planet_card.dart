import 'package:copernican/Models/Planet.dart';
import 'package:flutter/material.dart';

class PlanetCard extends StatelessWidget {
  final Planet planet;
  PlanetCard({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        width: 260,
        height: 360,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              planet.imageURL!,
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
                  planet.title!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Text(
                  planet.shortDesc!,
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
      ),
    );
  }
}
