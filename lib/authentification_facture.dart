import 'package:atm2/apercu_impression.dart';
import 'package:atm2/qr_code.dart';
import 'package:flutter/material.dart';

class AuthentificationFacture extends StatefulWidget {
  const AuthentificationFacture({Key? key}) : super(key: key);

  @override
  _AuthentificationFactureState createState() =>
      _AuthentificationFactureState();
}

class _AuthentificationFactureState extends State<AuthentificationFacture> {
  @override
  int i = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentification facture"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          TextField(
              decoration: InputDecoration(
                  hintStyle:
                      TextStyle(fontSize: 14, color: Colors.grey.shade500),
                  hintText: "Référence de la facture...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.search),
              label: Text("Vérifier")),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Facture N°: 89898989"),
              ),
            ],
          ),
          SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            textStyle: TextStyle(fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ApercuImpression();
                          }));
                        },
                        icon: Icon(Icons.print),
                        label: Text("Imprimer")),
                  )),
              Expanded(
                  child: Container(
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.amber,
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return QrCode();
                            }));
                          },
                          icon: Icon(Icons.qr_code),
                          label: Text("Scanner QrCode"))))
            ],
          )
        ],
      ),
    );
  }
}
