import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:replic_marvel/constants.dart';
import 'package:replic_marvel/widgets/character_card_widget.dart';

class CharacterSlider extends StatefulWidget {
  const CharacterSlider({super.key});

  @override
  State<CharacterSlider> createState() => _CharacterSliderState();
}

class _CharacterSliderState extends State<CharacterSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: characterList.length,
      options: CarouselOptions(
        viewportFraction: 0.6,
        height: 340,
        enlargeCenterPage: true,
      ),

      // Carta de cada heroe.
      itemBuilder: (context, index, realIndex) => CharacterCard(
        index: index,
      ),
    );
  }
}
