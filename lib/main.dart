import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:departure_app/Provider/Home_provider.dart';
import 'package:departure_app/UI/Home_page.dart';
import 'package:departure_app/UI/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => HomeProvider())
        ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Home_page': (context) => const Home_page(),
        'detail_page': (context) => const detail_page(),
      },
      home:  const Splash_screen(),
    );
  }
}

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        animationDuration: const Duration(seconds: 4),
        splash: "assets/images/Krishna.jpg",
        splashIconSize: 190,
        nextScreen: const Home_page(),
      ),
    );
  }
}
