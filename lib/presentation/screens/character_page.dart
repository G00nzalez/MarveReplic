import 'package:flutter/material.dart';
import 'package:replic_marvel/constants.dart';
import 'package:replic_marvel/widgets/news_card_widget.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class CharacterPage extends StatelessWidget {
  final index;

  const CharacterPage({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D0C11),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabecera de la página (Imagen, nombre real y flecha de regreso).
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.height,
                  child: Hero(
                    tag: characterList[index]['imgUrl']!,
                    child: Image.asset(
                      characterList[index]['imgUrl']!,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Image.asset(
                    'assets/images/nametag.png',
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 20,
                  child: Text(
                    characterList[index]['real_name']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            // Cuerpo de la página (Nombre, descripción y cartas personalizadas).
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    characterList[index]['hero_name']!.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    characterList[index]['description']!,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  // Cartas personalizadas de noticias.
                  const NewsCard(index: 0),
                  const NewsCard(index: 1),
                  const NewsCard(index: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
