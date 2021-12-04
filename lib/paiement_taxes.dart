import 'package:atm2/paiement_valide.dart';
import 'package:flutter/material.dart';

class PaiementTaxes extends StatefulWidget {
  const PaiementTaxes({Key? key}) : super(key: key);

  @override
  _PaiementTaxesState createState() => _PaiementTaxesState();
}

class _PaiementTaxesState extends State<PaiementTaxes> {
  late TextEditingController controller;
  String name = "";

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paiements"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                width: 130,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return paiementValide();
                    }));
                  },
                  icon: Icon(Icons.money),
                  label: Text(
                    'cash',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                width: 130,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () async {
                    final name = await openDialog();
                    if (name == null || name.isEmpty) return;
                    setState(() {
                      this.name = name;
                    });
                  },
                  icon: Icon(Icons.phone_android),
                  label: Text(
                    'Mobile',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ))
            ],
          ),
          Text(name)
        ],
      ),
    );
  }

  Future<String?> openDialog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(
              "AIRTEL MONEY",
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            content: TextField(
              autofocus: true,
              decoration: InputDecoration(hintText: 'Entrer le numéro'),
              controller: controller,
            ),
            actions: [TextButton(onPressed: valider, child: Text("Valider"))],
          ));

  void valider() {
    Navigator.of(context).pop(controller.text);
  }
}
