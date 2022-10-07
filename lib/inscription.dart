import 'package:flutter/material.dart';

TextEditingController phoneController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class Inscription extends StatefulWidget {
  const Inscription({
    super.key,
  });
  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  // const Inscription();
  bool value = false;
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            backgroundColor: const Color(0xFFF5F5FA),
            body: SafeArea(
                child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(27.0),
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
                        "S'inscrire",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Créez un compte et profitez de tous les services',
                        style: TextStyle(
                          color: Colors.grey,
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Expanded(
                      child: Container(
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
                                width: 45,
                              ),
                              Image.network(
                                  'http://pngimg.com/uploads/google/google_PNG19635.png',
                                  fit: BoxFit.cover),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Text(
                                'Sign Up With Google',
                                style: TextStyle(fontSize: 18),
                              ),
                            ]),
                            // onPressed: () {},
                          )))),
                    ),
                    const SizedBox(height: 18),

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
                        'Nom Complet',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      // padding: const EdgeInsets.all(5),
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                              IconData(0xe491, fontFamily: 'MaterialIcons')),
                          //IconData(0xe4a2, fontFamily: 'MaterialIcons'), // myIcon is a 48px-wide widget.
                          border: OutlineInputBorder(),
                          labelText: 'Nom complet',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Email',
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
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                              IconData(0xe22a, fontFamily: 'MaterialIcons')),
                          //IconData(0xe4a2, fontFamily: 'MaterialIcons'), // myIcon is a 48px-wide widget.
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                      height: 8,
                    ),
                    Container(
                      // padding: const EdgeInsets.all(5),
                      height: 40,
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
                      height: 5,
                    ),

                    Expanded(
                      child: Row(children: <Widget>[
                        Checkbox(
                          //title: Text(text),
                          value: value,
                          onChanged: (val) {
                            setState(() {
                              value = val!;
                            });
                          },
                        ),
                        const Text('I agree to the company ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.left),
                        const Text(
                          'Term of services ',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 11,
                          ),
                        ),
                        const Text(
                          'and ' '\t',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                        const Text(
                          ' Policy ',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 11,
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        color: Colors.lightBlue,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ElevatedButton(
                          child: const Text("S'inscrire"),
                          onPressed: () {
                            print(phoneController.text);
                            print(passwordController.text);
                          },
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Row(children: const <Widget>[
                            Text(
                              "Have an account?",
                              style: TextStyle(
                                color: Colors.grey,
                                // fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.blue,
                                //fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ])),
                    )
                  ],
                ),
              ),
            ))));
  }
}
