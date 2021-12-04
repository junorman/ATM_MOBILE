import 'package:atm2/paiement_taxes.dart';
import 'package:flutter/material.dart';

class Panier extends StatefulWidget {
  const Panier({Key? key}) : super(key: key);

  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 70505, "mat": "Location de voiture", "name": "10000"},
    {"id": 71001, "mat": "Location de sale", "name": "80000"},
    {"id": 71002, "mat": "Droit de marché", "name": "50000"},
    {"id": 80156, "mat": "Locations de camions", "name": "10000"},
    {"id": 91019, "mat": "Location d'espace", "name": "70000"},
  ];
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panier"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: _foundUsers.isNotEmpty
                ? ListView.builder(
                    itemCount: _foundUsers.length,
                    itemBuilder: (context, index) => Card(
                          key: ValueKey(_foundUsers[index]["id"]),
                          elevation: 4,
                          color: Colors.amberAccent,
                          margin: const EdgeInsets.symmetric(
                              vertical: 1, horizontal: 2),
                          child: ListTile(
                            leading: Text(
                              _foundUsers[index]["id"].toString(),
                              style: const TextStyle(fontSize: 24),
                            ),
                            trailing: Icon(Icons.delete_forever),
                            title: Text(_foundUsers[index]['mat']),
                            subtitle: Text(
                              '${_foundUsers[index]["name"].toString()} CFA',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {},
                          ),
                        ))
                : const Text(
                    'No results found',
                    style: TextStyle(fontSize: 24),
                  ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                width: 130,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.check),
                  label: Text(
                    'Valider',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PaiementTaxes();
                    }));
                  },
                ),
              ))
        ],
      ),
    );
  }
}
