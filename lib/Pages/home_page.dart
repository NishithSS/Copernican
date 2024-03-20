import 'package:copernican/Componets/planet_card.dart';
import 'package:copernican/Componets/star_card.dart';
import 'package:copernican/Global_data/Planets_global_data.dart';
import 'package:copernican/Global_data/Stars_global_data.dart';
import 'package:copernican/Models/Planet.dart';
import 'package:copernican/Models/Star.dart';
import 'package:copernican/Pages/planet_desc_page.dart';
import 'package:copernican/Pages/star_desc_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Copernican",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Planets.length,
              itemBuilder: (context, index) {
                final Planet planet = Planets[index];
                return GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlanetDescPage(planet: planet),
                        )),
                    child: PlanetCard(
                      planet: planet,
                    ));
              },
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text("Popular Stars"),
          SizedBox(
            height: 12,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: Stars.length,
            itemBuilder: (context, index) {
              final Star star = Stars[index];
              return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StarDescPage(star: star),
                      )),
                  child: StarCard(star: star,));
            },
          ))
        ],
      ),
    );
  }
}
