import 'package:flutter/material.dart';
import 'package:wizarding_world/app_theme.dart';
import 'package:wizarding_world/pages/gryffindor_character_page.dart';
import 'package:wizarding_world/pages/hufflepuff_character_page.dart';
import 'package:wizarding_world/pages/ravenclaw_character_page.dart';
import 'package:wizarding_world/pages/slytherin_character_page.dart';
import 'package:wizarding_world/widget/drawer.dart';
import 'package:wizarding_world/widget/regular_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerClass(''),
      body: SafeArea(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/black_star.jpg"),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Builder(
                          builder: (context) => GestureDetector(
                                onTap: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                child: const Icon(Icons.menu,
                                    color: Colors.white, size: 30.0),
                              )),
                      const Icon(Icons.search, color: Colors.black, size: 25.0),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Image(
                      image: ResizeImage(AssetImage("assets/images/logo.png"),
                          width: 200, height: 150)),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const GryffindorCharacterPage()));
                      },
                      child: const RegularCard(
                          house: "Gryffindor",
                          warna: AppTheme.gryffindorDarkRed)),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SlytherinCharacterPage()));
                      },
                      child: const RegularCard(
                          house: "Slytherin",
                          warna: AppTheme.slytherinDarkGreen)),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HufflepuffCharacterPage()));
                      },
                      child: const RegularCard(
                          house: "Hufflepuff",
                          warna: AppTheme.hufflePuffDarkBrown)),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RavenclawCharacterPage()));
                      },
                      child: const RegularCard(
                          house: "Ravenclaw",
                          warna: AppTheme.ravenclawDarkBlue)),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
