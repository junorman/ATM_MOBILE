import 'dart:math';

import 'package:atm2/accueil.dart';
import 'package:atm2/main.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class paiementValide extends StatefulWidget {
  const paiementValide({Key? key}) : super(key: key);

  @override
  _paiementValideState createState() => _paiementValideState();
}

class _paiementValideState extends State<paiementValide> {
  ConfettiController _controllerCenter = ConfettiController();
  @override
  void initState() {
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenter.play();
    super.initState();
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConfettiWidget(
            confettiController: _controllerCenter,
            blastDirectionality: BlastDirectionality.explosive,
            particleDrag: 0.05,
            emissionFrequency: 0.05,
            numberOfParticles: 50,
            gravity: 0.05,
            shouldLoop: true,
            colors: const [
              Colors.green,
              Colors.blue,
              Colors.pink,
              Colors.orange,
              Colors.purple
            ], // manually specify the colors to be used
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: 200,
            height: 200,
            child: Image.asset(
              "assets/valide.png",
              width: 150,
              height: 150,
            ),
          ),
          Container(
              alignment: Alignment.bottomCenter,
              width: 150,
              height: 50,
              child: Text(
                "Paiement effectué",
                style: TextStyle(fontSize: 18),
              )),
          SizedBox(
            height: 100,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                textStyle: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Accueil();
              }));
            },
            icon: Icon(Icons.arrow_right_alt),
            label: Text(
              'Retour au menu principal',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
