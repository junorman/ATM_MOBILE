import 'package:flutter/material.dart';

class AjouterContribuables extends StatefulWidget {
  const AjouterContribuables({Key? key}) : super(key: key);

  @override
  _AjouterContribuablesState createState() => _AjouterContribuablesState();
}

class _AjouterContribuablesState extends State<AjouterContribuables> {
  int currentStep = 0;
  TextEditingController chiffreAffaire = TextEditingController();
  TextEditingController capital = TextEditingController();
  TextEditingController raisonSociale = TextEditingController();
  TextEditingController categorieSelect = TextEditingController();

  String msg_categorieSelect = "";
  List<String> listCategorie = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
  ];
  String? dropdownValue;
  TextEditingController debutContribution = TextEditingController();
  TextEditingController numeroFiscal = TextEditingController();
  TextEditingController numeroMunicipal = TextEditingController();
  TextEditingController desc = TextEditingController();
  TextEditingController adresse = TextEditingController();
  TextEditingController tel = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController ville = TextEditingController();
  TextEditingController longitude = TextEditingController();
  TextEditingController latitude = TextEditingController();

  int rows = 0;
  String msg = "";
  String msg_chiffreAffaire = "";
  String msg_capital = "";
  String msg_raisonSociale = "";
  String msg_debutContribution = "";
  String msg_numeroFiscal = "";
  String msg_numeroMunicipal = "";
  String msg_desc = "";
  String msg_adresse = "";
  String msg_tel = "";
  String msg_email = "";
  String msg_ville = "";
  String msg_longitude = "";
  String msg_latitude = "";

  String msg_nom2 = "";
  String msg_prenom2 = "";
  String msg_natiobalite2 = "";
  String msg_numeroPiece2 = "";
  String msg_naturePiece2 = "";
  String msg_adresse2 = "";
  String msg_tel2 = "";

  String msg_nom3 = "";
  String msg_prenom3 = "";
  String msg_natiobalite3 = "";
  String msg_numeroPiece3 = "";
  String msg_naturePiece3 = "";
  String msg_adresse3 = "";
  String msg_tel3 = "";

  TextEditingController nom2 = TextEditingController();
  TextEditingController prenom2 = TextEditingController();
  TextEditingController natiobalite2 = TextEditingController();
  TextEditingController numeroPiece2 = TextEditingController();
  TextEditingController naturePiece2 = TextEditingController();
  TextEditingController adresse2 = TextEditingController();
  TextEditingController tel2 = TextEditingController();

  TextEditingController nom3 = TextEditingController();
  TextEditingController prenom3 = TextEditingController();
  TextEditingController natiobalite3 = TextEditingController();
  TextEditingController numeroPiece3 = TextEditingController();
  TextEditingController naturePiece3 = TextEditingController();
  TextEditingController adresse3 = TextEditingController();
  TextEditingController tel3 = TextEditingController();

  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter contribuable'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Stepper(
        type: StepperType.horizontal,
        steps: getSteps(),
        currentStep: currentStep,
        onStepContinue: () {
          final isLastStep = currentStep == getSteps().length - 1;
          if (isLastStep) {
            setState(() {
              final u_chiffreAffaire = chiffreAffaire.value.text;
              final u_capital = capital.value.text;
              final u_raisonSociale = raisonSociale.value.text;
              final u_debutContribution = debutContribution.value.text;
              final u_numeroFiscal = numeroFiscal.value.text;
              final u_numeroMunicipal = numeroMunicipal.value.text;
              final u_desc = desc.value.text;
              final u_adresse = adresse.value.text;
              final u_tel = tel.value.text;
              final u_email = email.value.text;
              final u_ville = ville.value.text;
              final u_latitude = latitude.value.text;
              final u_longitude = longitude.value.text;

              final u_nom2 = nom2.value.text;
              final u_prenom2 = prenom2.value.text;
              final u_natiobalite2 = natiobalite2.value.text;
              final u_numeroPiece2 = numeroPiece2.value.text;
              final u_naturePiece2 = naturePiece2.value.text;
              final u_adresse2 = adresse2.value.text;
              final u_tel2 = tel2.value.text;

              final u_nom3 = nom3.value.text;
              final u_prenom3 = prenom3.value.text;
              final u_natiobalite3 = natiobalite3.value.text;
              final u_numeroPiece3 = numeroPiece3.value.text;
              final u_naturePiece3 = naturePiece3.value.text;
              final u_adresse3 = adresse3.value.text;
              final u_tel3 = tel3.value.text;

              if (u_chiffreAffaire.isEmpty) {
                msg_chiffreAffaire = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_capital.isEmpty) {
                msg_capital = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_raisonSociale.isEmpty) {
                msg_raisonSociale = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_debutContribution.isEmpty) {
                msg_debutContribution = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_numeroFiscal.isEmpty) {
                msg_numeroFiscal = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_numeroMunicipal.isEmpty) {
                msg_numeroMunicipal = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_desc.isEmpty) {
                msg_desc = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_adresse.isEmpty) {
                msg_adresse = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_tel.isEmpty) {
                msg_tel = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_email.isEmpty) {
                msg_email = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_ville.isEmpty) {
                msg_ville = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_longitude.isEmpty) {
                msg_ville = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_latitude.isEmpty) {
                msg_latitude = "Veuillez saisir ce champ";
                rows = 1;
              }
              //
              else if (u_nom2.isEmpty) {
                msg_nom2 = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_prenom2.isEmpty) {
                msg_prenom2 = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_natiobalite2.isEmpty) {
                msg_adresse2 = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_numeroPiece2.isEmpty) {
                msg_numeroPiece2 = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_naturePiece2.isEmpty) {
                msg_naturePiece2 = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_adresse2.isEmpty) {
                msg_adresse2 = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_tel2.isEmpty) {
                msg_tel2 = "Veuillez saisir ce champ";
                rows = 1;
              } else if (u_tel2.isEmpty) {
                msg_tel2 = "Veuillez saisir ce champ";
                rows = 1;
              } else {
                rows = 0;
                print('valide');
              }
            });
          } else {
            setState(() {
              currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (currentStep == 0) {
            return;
          }
          setState(() {
            currentStep -= 1;
          });
        },
        onStepTapped: (step) {
          setState(() {
            currentStep = step;
          });
        },
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
            state: currentStep > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 0,
            title: Text('1'),
            content: Column(
              children: [
                Text(
                  "ACTIVITES",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: chiffreAffaire,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Chiffre d'affaire",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: capital,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Capital',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: raisonSociale,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Raison sociale',
                  ),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  hint: Text('Catégorie contribuables'),
                  icon: const Icon(Icons.arrow_drop_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Boutiquier', 'Entreprise', 'Prestataire']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 55,
                ),
                Text(
                  "INFORMATIONS",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: debutContribution,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Date contribution',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: numeroFiscal,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Numéro fiscal',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: numeroMunicipal,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Numéro municipal',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: desc,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Descriptions',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: adresse,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adresse',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: tel,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Téléphone',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: email,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: ville,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Ville',
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                Text(
                  "Coordonnées",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: longitude,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Longitude',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: latitude,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Latitude',
                  ),
                ),
                /*DropDownField(
                  controller: categorieSelect,
                  hintText: "Sélectionner une catégorie",
                  enabled: true,
                  items: listCategorie,
                  onValueChanged: (value) {},
                )*/
              ],
            )),
        Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text('2'),
            content: Column(children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                "INFORMATIONS DU PROPRIETAIRES",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: nom2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nom',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: prenom2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Prénom',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: natiobalite2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nationalité',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: numeroPiece2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'numéro de pièce',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: naturePiece2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nature de pièce',
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Text(
                "ADRESSE DU PROPRIETAIRE",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: adresse2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Adresse',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: tel2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Téléphone',
                ),
              ),
            ])),
        Step(
            state: currentStep > 2 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 2,
            title: Text('3'),
            content: Column(children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                "INFORMATIONS DU GERANT",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: nom3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nom',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: prenom3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Prénom',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: natiobalite3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nationalité',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: numeroPiece3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'numéro de pièce',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: naturePiece3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nature de pièce',
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Text(
                "ADRESSE GERANT",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: adresse3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Adresse',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: tel3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Téléphone',
                ),
              ),
            ])),
        Step(
            state: currentStep > 2 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 2,
            title: Text('4'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'ACTIVITES ********',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text("Chiffre d'affaire: ${msg_chiffreAffaire}"),
                Text('Capital: ${msg_capital}'),
                const Text('Raison social: *****'),
                Text('Numéro fiscal : ${msg_debutContribution}'),
                Text('Numéro municipal : ${msg_numeroMunicipal}'),
                Text('Descriptions : ${msg_desc}'),
                Text('Adresse : ${msg_adresse}'),
                Text('Telephone : ${msg_tel}'),
                Text('Email : ${msg_email}'),
                Text('ville : ${msg_ville}'),
                Text('latitude : ${msg_latitude}'),
                Text('longitude : ${msg_longitude}'),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'INFORMATIONS DU PROPRIETAIRE ******',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text("Nom: ${msg_nom2}"),
                Text('Prénom: ${msg_prenom2}'),
                Text('Nationalité: ${msg_numeroPiece2}'),
                Text('Numéro de pièce : ${msg_numeroPiece2}'),
                Text('Nature pièce : ${msg_naturePiece2}'),
                Text('Adresse : ${msg_adresse2}'),
                Text('Téléphone : ${msg_tel2}'),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'INFORMATIONS DU GERANT *****',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text("Nom: ${msg_nom3}"),
                Text('Prénom: ${msg_prenom3}'),
                Text('Nationalité: ${msg_numeroPiece3}'),
                Text('Numéro de pièce : ${msg_numeroPiece3}'),
                Text('Nature pièce : ${msg_naturePiece3}'),
                Text('Adresse : ${msg_adresse3}'),
                Text('Téléphone : ${msg_tel3}'),
                Text(
                  "L'un des champs n'est pas saisies  : ${tel.text}",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ))),
      ];
}
