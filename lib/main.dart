import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:atm2/accueil.dart';
import 'package:atm2/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: AnimatedSplashScreen(
            splash: Image.asset("assets/logo.jpg"),
            nextScreen: Accueil(),
            splashTransition: SplashTransition.rotationTransition,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
