import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({
    super.key,
  });
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            body: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(children: <Widget>[
                  Row(children: const <Widget>[
                    Icon(IconData(0xf572,
                        fontFamily: 'MaterialIcons', matchTextDirection: true)),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  const Expanded(child: Divider()),
                  Row(children: const <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://image.shutterstock.com/image-photo/closeup-portrait-handsome-smiling-young-260nw-1687157521.jpg"),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      'Mohamed' '\n' '48521020',
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ]),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.person_outline,
                          color: Colors.blue,
                        ),
                        title: const Text('Mon compte'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.location_on_outlined,
                          color: Colors.blue,
                        ),
                        title: const Text('Addresse'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.settings,
                          color: Colors.blue,
                        ),
                        title: const Text('Parametres'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.help_center,
                          color: Colors.blue,
                        ),
                        title: const Text("Centre d'aide"),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        title: const Text("Contact"),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                    child: const Text(
                      "Se Déconnecter",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      print('hhh');
                    }),
              ),
              const SizedBox(
                height: 70,
              ),
              FloatingActionButton(
                onPressed: (() {
                  print('1');
                }),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  unselectedLabelStyle: const TextStyle(
                      color: Color.fromARGB(255, 55, 15, 15), fontSize: 14),
                  //selectedItemColor: Colors.black,
                  fixedColor: Colors.white,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        color: Colors.grey,
                        size: 35,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.analytics,
                        color: Colors.grey,
                        size: 35,
                      ),
                      label: 'Stats',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.card_giftcard,
                        color: Colors.grey,
                        size: 35,
                      ),
                      label: 'My Cards',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 35,
                      ),
                      label: 'Profile',
                    )
                  ]),
            ])));
  }
}
