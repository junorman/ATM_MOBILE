import 'package:atm2/panier.dart';
import 'package:flutter/material.dart';

class SelectionnerPeriode extends StatefulWidget {
  const SelectionnerPeriode({Key? key}) : super(key: key);

  @override
  _SelectionnerPeriodeState createState() => _SelectionnerPeriodeState();
}

class _SelectionnerPeriodeState extends State<SelectionnerPeriode> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 70505, "name": "01/10/2020"},
    {"id": 71001, "name": "02/10/2020"},
    {"id": 71002, "name": "03/10/2020"},
    {"id": 80156, "name": "04/10/2020"},
    {"id": 91019, "name": "05/10/2020"},
    {"id": 91019, "name": "06/10/2020"},
    {"id": 91019, "name": "07/10/2020"},
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
        title: Text("Sélectionner une période"),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
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
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.reply),
                  label: Text(
                    'Retour',
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Panier();
                    }));
                  },
                  icon: Icon(Icons.remove_red_eye_outlined),
                  label: Text(
                    'Panier',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ))
            ],
          ),
          Expanded(
            child: _foundUsers.isNotEmpty
                ? ListView.builder(
                    itemCount: _foundUsers.length,
                    itemBuilder: (context, index) => Card(
                          key: ValueKey(_foundUsers[index]["id"]),
                          elevation: 4,
                          //color: Colors.amberAccent,
                          margin: const EdgeInsets.symmetric(
                              vertical: 1, horizontal: 2),
                          child: ListTile(
                            leading: Text(
                              _foundUsers[index]["name"].toString(),
                              style: const TextStyle(fontSize: 24),
                            ),
                            trailing: Icon(
                              Icons.add_box,
                              size: 24,
                              color: Colors.blue[900],
                            ),
                            onTap: () {},
                          ),
                        ))
                : const Text(
                    'No results found',
                    style: TextStyle(fontSize: 24),
                  ),
          )
        ],
      ),
    );
  }
}
