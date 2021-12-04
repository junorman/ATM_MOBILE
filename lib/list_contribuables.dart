import 'package:atm2/listes_taxes.dart';
import 'package:flutter/material.dart';

class ListesContribuables extends StatefulWidget {
  const ListesContribuables({Key? key}) : super(key: key);

  @override
  _ListesContribuablesState createState() => _ListesContribuablesState();
}

class _ListesContribuablesState extends State<ListesContribuables> {
  // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "mat": "MTR002", "name": "Willy"},
    {"id": 2, "mat": "MTR003", "name": "yve"},
    {"id": 3, "mat": "MTR004", "name": "silvain"},
    {"id": 4, "mat": "MTR005", "name": "Eric"},
    {"id": 5, "mat": "MTR006", "name": "bob"},
    {"id": 6, "mat": "MTR007", "name": "jean"},
    {"id": 7, "mat": "MTR008", "name": "roger"},
    {"id": 8, "mat": "MTR009", "name": "aristote"},
    {"id": 9, "mat": "MTR0010", "name": "Chrispin"},
    {"id": 10, "mat": "MTR0011", "name": "Charle"},
  ];
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listes contribuables"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          TextField(
            onChanged: (value) => _runFilter(value),
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade500,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                hintText: "Recherche..."),
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
                              _foundUsers[index]["id"].toString(),
                              style: const TextStyle(fontSize: 24),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 24,
                              color: Colors.blue[900],
                            ),
                            title: Text(_foundUsers[index]['mat']),
                            subtitle: Text(
                                '${_foundUsers[index]["name"].toString()} contribuable'),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ListesTaxes();
                              }));
                            },
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
