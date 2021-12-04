import 'package:atm2/ajouter_contribuable.dart';
import 'package:atm2/authentification_facture.dart';
import 'package:atm2/list_contribuables.dart';
import 'package:atm2/login.dart';
import 'package:atm2/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:atm2/navbar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
            accountName: Text(
              "APPLICATION DES TAXES MUNICIPALES",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
            ),
            accountEmail: Text("User@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text(
                "ATM",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    "assets/logo-mairie.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.dashboard_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Ajouté contribuable",
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AjouterContribuables();
                }));
                /*Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AjouterContribuable();
                }));*/
              });
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              "Liste des contribuables",
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListesContribuables();
                }));
              });
            },
          ),
          ListTile(
            leading: Icon(
              Icons.book_online,
              color: Colors.black,
            ),
            title: Text(
              "Authentification de la facture",
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AuthentificationFacture();
                }));
              });
            },
          ),
        ],
      ),
    );
  }
}
