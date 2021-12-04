import 'package:atm2/impressions.dart';
import 'package:atm2/login.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ApercuImpression extends StatefulWidget {
  const ApercuImpression({Key? key}) : super(key: key);

  @override
  _ApercuImpressionState createState() => _ApercuImpressionState();
}

class _ApercuImpressionState extends State<ApercuImpression> {
  final List<Map<String, dynamic>> data = [
    {"title": "Location camion", "price": 1000, "qty": 1},
    {"title": "Location salle", "price": 2000, "qty": 2},
    {"title": "Location materiel", "price": 5000, "qty": 4},
    {"title": "Droit de marché", "price": 8000, "qty": 3},
    {"title": "Location espace", "price": 9000, "qty": 1},
    {"title": "Evénement", "price": 10000, "qty": 2},
  ];

  final f = NumberFormat("\$###,###.00", "en_US");

  @override
  Widget build(BuildContext context) {
    int _total = 0;
    _total = data.map((e) => e['price'] * e['qty']).reduce(
          (value, element) => value + element,
        );
    return Scaffold(
      appBar: AppBar(
        title: Text("Apercu de l'impression"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        data[index]['title'].toString(),
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${f.format(data[index]['price'])} * ${data[index]['qty']}",
                      ),
                      trailing: Text(
                          f.format(data[index]['price'] * data[index]['qty'])),
                    );
                  })),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  "Total: ${f.format(_total)}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 80,
                ),
                Expanded(
                    child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Impressions();
                    }));
                  },
                  icon: Icon(Icons.print),
                  label: Text("Print"),
                  style: TextButton.styleFrom(
                      primary: Colors.white, backgroundColor: Colors.green),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
