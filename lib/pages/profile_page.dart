import 'package:flutter/material.dart';
import 'package:wizarding_world/app_theme.dart';
import 'package:wizarding_world/pages/about_me_page.dart';

import '../widget/drawer.dart';
import '../widget/top_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      drawer: DrawerClass(''),
      body: SafeArea(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/black_star.jpg"),
                    fit: BoxFit.cover)),
          ),
          Column(children: <Widget>[
            TopContainer(
              color1: AppTheme.slytherinDarkGreen,
              color2: AppTheme.slytherinDarkSilver,
              height: 350,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Builder(
                            builder: (context) => GestureDetector(
                                  onTap: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  child: const Icon(Icons.menu,
                                      color: Colors.black, size: 30.0),
                                )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const <Widget>[
                            Text("Profile",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'WizardingWorld')),
                            SizedBox(
                              height: 20,
                            ),
                            CircleAvatar(
                              radius: 90,
                              backgroundImage: AssetImage(
                                "assets/images/me.jpg",
                              ),
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Carlene Annabel - IK21',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 5,
                            ),
                          ]),
                    )
                  ]),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 4, bottom: 4, left: 20),
                    decoration: const BoxDecoration(
                      color: AppTheme.slytherinDarkGreen,
                    ),
                    child: const Text("Bio",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white))),
                const SizedBox(height: 8),
                Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: const Text("A proud Slytherin",
                        style: TextStyle(fontSize: 18, color: Colors.white))),
                const SizedBox(height: 16),
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 4, bottom: 4, left: 20),
                    decoration: const BoxDecoration(
                      color: AppTheme.slytherinDarkGreen,
                    ),
                    child: const Text("Favourite Spell",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white))),
                const SizedBox(height: 8),
                Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: const Text("Confundo :)",
                        style: TextStyle(fontSize: 18, color: Colors.white))),
                const SizedBox(height: 16),
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 4, bottom: 4, left: 20),
                    decoration: const BoxDecoration(
                      color: AppTheme.slytherinDarkGreen,
                    ),
                    child: const Text("Instagram",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white))),
                const SizedBox(height: 8),
                Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: const Text("@carleneannabel_",
                        style: TextStyle(fontSize: 18, color: Colors.white))),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutMePage()));
                },
                child: Text('About Me'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.slytherinDarkGreen,
                )),
          ]),
        ]),
      ),
    );
  }
}
