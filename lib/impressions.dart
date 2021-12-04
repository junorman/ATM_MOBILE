import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Impressions extends StatefulWidget {
  const Impressions({Key? key}) : super(key: key);

  @override
  _ImpressionsState createState() => _ImpressionsState();
}

class _ImpressionsState extends State<Impressions> {
  List<BluetoothDevice> devices = [];
  BluetoothDevice? selectedDevice;
  BlueThermalPrinter printer = BlueThermalPrinter.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDevices();
  }

  void getDevices() async {
    devices = await printer.getBondedDevices();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Impressions"),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<BluetoothDevice>(
              value: selectedDevice,
              hint: const Text("Sélectionnez l'imprimante thermique"),
              onChanged: (device) {
                setState(() {
                  selectedDevice = device;
                });
              },
              items: devices
                  .map((e) => DropdownMenuItem(
                        child: Text(e.name!),
                        value: e,
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  printer.connect(selectedDevice!);
                },
                child: const Text("Connecter")),
            ElevatedButton(
                onPressed: () {
                  printer.disconnect();
                },
                child: const Text("Deconnexion")),
            ElevatedButton(
                onPressed: () async {
                  if ((await printer.isConnected)!) {
                    printer.printNewLine();
                    // SIZE
                    // 0: Normal
                    // 1: Normal
                    // 2: Medium
                    // 3: Large - Bold

                    // ALIGN
                    // 0: left
                    // 1: center
                    // 2: right

                    printer.printCustom("Thermal Printer Demo", 0, 1);
                    printer.printQRcode("Thermal Printer Demo", 200, 200, 1);
                  }
                },
                child: const Text("Imprimer")),
          ],
        ),
      ),
    );
  }
}
