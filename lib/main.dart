import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    var bg = Lottie.asset(
      'assets/bg.json',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );

    var text = AnimatedTextKit(
      totalRepeatCount: 1,
      animatedTexts: [
        TypewriterAnimatedText(
          "Hi 👋🏼\nI'm Deniz",
          textStyle:
              GoogleFonts.vt323().copyWith(fontSize: 100, color: Colors.white),
          speed: const Duration(milliseconds: 200),
        ),
      ],
    );

    var parallaxStack = ParallaxStack(
      layers: [
        bg,
        ParallaxLayer(
          yRotation: .01,
          xRotation: .01,
          dimensionalOffset: .0018,
          child: bg,
        ),
        Container(
          color: Colors.black.withOpacity(.45),
          width: double.infinity,
          height: double.infinity,
        ),
        ParallaxLayer(
          yRotation: .1,
          xRotation: .1,
          enable3d: true,
          dimensionalOffset: .007,
          child: Center(
            child: SizedBox(
              height: 400,
              width: 410,
              child: text,
            ),
          ),
        ),
      ],
    );

    return MaterialApp(
        title: "Deniz Salman",
        home: Scaffold(
          body: parallaxStack,
        ));
  }
}
