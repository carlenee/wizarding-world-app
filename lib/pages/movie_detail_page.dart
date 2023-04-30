import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wizarding_world/widget/drawer.dart';

class MovieDetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String synopsis;

  const MovieDetailPage(
      {super.key,
      required this.image,
      required this.title,
      required this.synopsis});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: DrawerClass(''),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/blue_star.jpg"),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
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
                    ],
                  ),
                  const Image(
                      image: ResizeImage(AssetImage("assets/images/logo.png"),
                          width: 150, height: 100)),
                  Row(
                    children: [
                      Image.network(
                        image,
                        width: 200,
                        height: 350,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 150,
                            minHeight: 60,
                            minWidth: 80),
                        child: AutoSizeText(
                          title,
                          style: const TextStyle(
                              fontFamily: 'WizardingWorld',
                              fontSize: 40.0,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 61, 63, 78)),
                    padding: const EdgeInsets.all(30),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: 500,
                          maxWidth: maxWidth,
                          minHeight: 500,
                          minWidth: maxWidth),
                      child: AutoSizeText(
                        synopsis,
                        style: const TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 18.0,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
