import 'package:atm2/accueil.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          flex: 1,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(0xFF0D47A1),
                  Color(0xFF039BE5),
                  Color(0xFF4A148C),
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/logo.jpg",
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 400,
                  width: 305,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Authentification',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      /*const SizedBox(
                        height: 20,
                      ),*/
                      Container(
                        width: 250,
                        child: const TextField(
                          decoration: InputDecoration(
                              labelText: "Adresse Email",
                              suffixIcon: Icon(
                                Icons.email,
                                size: 17,
                              )),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Mot de passe",
                              suffixIcon: Icon(
                                Icons.remove_red_eye_outlined,
                                size: 17,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Mot de passe oublié",
                              style: TextStyle(
                                color: Colors.blue[900],
                              ),
                            )
                          ],
                        ),
                      ),
                      /*const SizedBox(
                      height: 20,
                    ),*/
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Accueil();
                          }));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF0D47A1),
                                    Color(0xFF039BE5),
                                    Color(0xFF4A148C),
                                  ])),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'Se connecter',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Suivez nous sur !",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.blue[900],
                          ),
                          Icon(
                            Icons.email,
                            color: Colors.blue[900],
                          ),
                          Icon(
                            Icons.messenger,
                            color: Colors.blue[900],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
