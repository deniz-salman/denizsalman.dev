import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Deniz Salman",
        theme: ThemeData(
          textTheme: GoogleFonts.vt323TextTheme(),
        ),
        home: Scaffold(
            body: Stack(
          children: [
            Lottie.asset('assets/bg.json',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.45),
            ),
            Center(
              child: SizedBox(
                width: 500,
                height: 400,
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Hi 👋🏼\nI'm Deniz",
                      textStyle: GoogleFonts.vt323()
                          .copyWith(fontSize: 100, color: Colors.white),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
