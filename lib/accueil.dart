import 'package:flutter/material.dart';
import 'package:atm2/ajouter_contribuable.dart';
import 'package:atm2/list_contribuables.dart';
import 'package:atm2/navbar.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("ATM"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: showListView(),
    );
  }

  Widget showListView() {
    var listView = ListView(
      children: [
        Card(
          color: Colors.amberAccent,
          child: ListTile(
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AjouterContribuables();
                }));
              });
            },
            leading: Icon(
              Icons.book,
              size: 50,
              color: Colors.white,
            ),
            title: Text(
              'Enregistrer une activité',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Identification',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Card(
          color: Colors.grey,
          child: ListTile(
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListesContribuables();
                }));
              });
            },
            leading: Icon(
              Icons.money,
              size: 50,
              color: Colors.white,
            ),
            title: Text(
              'Collecte de taxes',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Versement spontanné',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );

    return listView;
  }
}
