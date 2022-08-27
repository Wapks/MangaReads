import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 235, 224, 1),
        appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: const Text(
              'My Profile',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.logout_rounded),
                  tooltip: 'Logout',
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  }),
            ]),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Center(
                      child: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatars/default.jpg'),
                    radius: 60,
                  )),
                  Divider(
                    height: 30,
                  ),
                  Text("USERNAME",
                      style: TextStyle(
                          color: Color.fromRGBO(189, 179, 170, 1),
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold)),
                  Text('Kelden',
                      style: TextStyle(
                          color: Color.fromARGB(255, 129, 107, 94),
                          letterSpacing: 1.4,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text("FAVORITE GENRE",
                      style: TextStyle(
                          color: Color.fromRGBO(189, 179, 170, 1),
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold)),
                  Text('COMEDY, ROMANCE, HORROR, HISTORICAL',
                      style: TextStyle(
                          color: Color.fromARGB(255, 129, 107, 94),
                          letterSpacing: 1.4,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400)),
                ])));
  }
}
