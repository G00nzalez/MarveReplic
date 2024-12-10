import 'package:flutter/material.dart';
import 'package:replic_marvel/widgets/character_slider_widget.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Cabecera
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 - 100,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset('assets/images/background1.png',
                      fit: BoxFit.fill),
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    // AppBar
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          'assets/images/logo.png',
                          width: 100,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Título y descripción de la app.
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'MARVEL CHARACTERS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Get hooked on a hearty helping of heroes and villanis \n from the humble House of Ideas!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Carrusel de heroes.
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset('assets/images/background2.png',
                      fit: BoxFit.fill),
                ),
                Center(
                  child: WidgetAnimator(
                    incomingEffect:
                        WidgetTransitionEffects.incomingSlideInFromBottom(),
                    child: const CharacterSlider(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
