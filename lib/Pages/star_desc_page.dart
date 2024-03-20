import 'package:copernican/Models/Star.dart';
import 'package:flutter/material.dart';

class StarDescPage extends StatelessWidget {
  final Star star;
  StarDescPage({super.key, required this.star});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(star.title!)),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 400,
            color: Colors.green[200],
            // child: ModelViewer(
            //   backgroundColor: Colors.transparent,
            //   src: 'assets/models/earth.glb',
            //   alt: 'A 3D model of an astronaut',
            //   ar: true,
            //   autoRotate: true,
            // ),
          ),
          SizedBox(
            height: 12,
          ),
          Text('Description:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(
            height: 8,
          ),
          Text(star.description!),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("Diameter",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(
                    height: 8,
                  ),
                  Text(star.diameter!),
                ],
              ),
              Column(
                children: [
                  Text("Luminosity",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(
                    height: 8,
                  ),
                  Text(star.luminosity!),
                ],
              ),
              Column(
                children: [
                  Text("Mass",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(
                    height: 8,
                  ),
                  Text(star.mass!),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
