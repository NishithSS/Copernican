import 'package:copernican/Models/Planet.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class PlanetDescPage extends StatelessWidget {
  final Planet planet;
  PlanetDescPage({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.title!),
      ),
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
          Text(planet.description!),
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
                  Text(planet.diameter!),
                ],
              ),
              Column(
                children: [
                  Text("No. of moons",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(
                    height: 8,
                  ),
                  Text(planet.noOfMoons!),
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
                  Text(planet.mass!),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
