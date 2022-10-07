import 'package:exempleflutter/inscription.dart';
import 'package:flutter/material.dart';

TextEditingController phoneController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class Bienvenue extends StatefulWidget {
  const Bienvenue({super.key});
  @override
  State<Bienvenue> createState() => _BienvenueState();
}

class _BienvenueState extends State<Bienvenue> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: const Text('demo')),
            backgroundColor: const Color(0xFFF5F5FA),
            body: SafeArea(
                child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Bienvenue!',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Connectez-vous à votre compte',
                        style: TextStyle(
                          color: Colors.grey,
                          // fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Card(
                            //backgroundColor: Colors.white,
                            child: Center(
                                child: InkWell(
                          //splashColor: Colors.white,
                          onTap: () {},
                          child: Row(children: <Widget>[
                            const SizedBox(
                              width: 55,
                            ),
                            Image.network(
                                'http://pngimg.com/uploads/google/google_PNG19635.png',
                                fit: BoxFit.cover),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Text(
                              'Login with Google',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ]),
                          // onPressed: () {},
                        )))),
                    const SizedBox(height: 20),

                    // alignment: Alignment.centerLeft,
                    Row(
                      children: const <Widget>[
                        Expanded(
                          child: Divider(
                              //height: 12,
                              //color: Colors.black,
                              //indent: 0,
                              //endIndent: 120,
                              ),
                        ),
                        Text("OR"),
                        Expanded(
                          child: Divider(
                            height: 12,
                            //color: Colors.black,
                            //indent: 70,
                            //endIndent: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Numéro de telephone',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      // padding: const EdgeInsets.all(5),
                      height: 45,
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                              IconData(0xe22a, fontFamily: 'MaterialIcons')),
                          //IconData(0xe4a2, fontFamily: 'MaterialIcons'), // myIcon is a 48px-wide widget.
                          border: OutlineInputBorder(),
                          labelText: 'Numero de telephone',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      // padding: const EdgeInsets.all(5),
                      height: 45,
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                              IconData(0xe3ae, fontFamily: 'MaterialIcons')),
                          suffixIcon: Icon(Icons.visibility_off),

                          //IconData(0xe4a2, fontFamily: 'MaterialIcons'), // myIcon is a 48px-wide widget.
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text(
                        'forgot Password ?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ElevatedButton(
                          child: const Text('connexion',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          onPressed: () {
                            print(phoneController.text);
                            print(passwordController.text);
                          },
                        )),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                        child: Row(children: <Widget>[
                          const Text(
                            "Vous n'avez pas de compte?",
                            style: TextStyle(
                              color: Colors.grey,
                              // fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          InkWell(
                              child: const Text(
                                "S'inscrire",
                                style: TextStyle(
                                  color: Colors.blue,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              onTap: () {
                                // Navigate back to first route when tapped.
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Inscription()));
                              }),
                        ])),
                  ],
                ),
              ),
            ))));
  }
}
