import 'package:flutter/material.dart';
import 'package:replic_marvel/constants.dart';

class NewsCard extends StatelessWidget {
  final index;

  const NewsCard({this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          //Cabecera de la carta (Imagen de la izquierda).
          SizedBox(
            width: MediaQuery.of(context).size.width / 2 - 30,
            child: Image.asset(latestNews[index]['imgUrl']!),
          ),
          const SizedBox(
            width: 10,
          ),

          //Cuerpo de la carta (Tag y título de las noticias).
          SizedBox(
            width: MediaQuery.of(context).size.width / 2 - 20,
            child: Column(
              children: [
                Text(
                  latestNews[index]['tag']!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  latestNews[index]['title']!,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
