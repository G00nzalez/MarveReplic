import 'package:flutter/material.dart';
import 'package:replic_marvel/constants.dart';
import 'package:replic_marvel/presentation/screens/character_page.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class CharacterCard extends StatelessWidget {
  final index;

  CharacterCard({this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterPage(
              index: index,
            ),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(40),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Imagen de cada heroe.
              Flexible(
                flex: 5,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 40,
                  child: Hero(
                    tag: characterList[index]['imgUrl']!,
                    child: Image.asset(
                      characterList[index]['imgUrl']!,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              //Línea de separación.
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width / 2 - 40,
                color: Colors.red,
              ),

              //Nombre y nombre real de cada heroe.
              Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nombre de superheroe.
                      Text(
                        characterList[index]['hero_name']!.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      // Nombre real.
                      Text(
                        characterList[index]['real_name']!.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
