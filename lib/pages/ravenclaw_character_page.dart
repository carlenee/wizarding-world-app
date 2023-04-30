import 'package:flutter/material.dart';
import 'package:wizarding_world/app_theme.dart';
import 'package:wizarding_world/pages/character_detail_page.dart';
import 'package:wizarding_world/utils/fetch_ravenclaw_characters.dart';
import 'package:wizarding_world/widget/ravenclaw_character_card.dart';
import 'package:wizarding_world/widget/drawer.dart';
import 'package:wizarding_world/widget/top_container.dart';
import 'package:card_swiper/card_swiper.dart';

import '../widget/slytherin_character_card.dart';

class RavenclawCharacterPage extends StatefulWidget {
  const RavenclawCharacterPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RavenclawCharacterPageState();
}

class _RavenclawCharacterPageState extends State<RavenclawCharacterPage> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    TopContainer(
                      color1: AppTheme.ravenclawBlue,
                      color2: AppTheme.ravenclawGold,
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
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
                                            color: Colors.black, size: 30.0),
                                      )),
                            ],
                          ),
                          const Image(
                              image: ResizeImage(
                                  AssetImage("assets/images/logo.png"),
                                  width: 200,
                                  height: 150)),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const <Widget>[
                                    Text(
                                      'Ravenclaw',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: 'WizardingWorld'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(children: [
                      FutureBuilder(
                        future: getRavenclawCharacters(),
                        builder: (context, AsyncSnapshot snapshot) {
                          if (snapshot.data == null) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else {
                            if (!snapshot.hasData) {
                              return Column(
                                children: const [
                                  Text(
                                    "Belum ada character",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(height: 8),
                                ],
                              );
                            } else {
                              return ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: snapshot.data!.length - 21,
                                  itemBuilder: (_, i) {
                                    return InkWell(
                                      child: SizedBox(
                                          height: 600,
                                          child: Swiper(
                                            itemCount:
                                                snapshot.data!.length - 20,
                                            itemWidth: MediaQuery.of(context)
                                                .size
                                                .width,
                                            itemHeight: MediaQuery.of(context)
                                                .size
                                                .height,
                                            layout: SwiperLayout.TINDER,
                                            pagination: const SwiperPagination(
                                                builder:
                                                    FractionPaginationBuilder(
                                              color:
                                                  AppTheme.slytherinDarkGreen,
                                              activeColor: Colors.white,
                                            )),
                                            itemBuilder: (context, index) {
                                              return InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Stack(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                          height: 100,
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) => CharacterDetailPage(
                                                                        house:
                                                                            'Ravenclaw',
                                                                        dob: snapshot
                                                                            .data[
                                                                                index]
                                                                            .dateOfBirth
                                                                            .toString()
                                                                            .split(
                                                                                '.')
                                                                            .last,
                                                                        eyecolor: snapshot
                                                                            .data[
                                                                                index]
                                                                            .eyeColour
                                                                            .toString()
                                                                            .split(
                                                                                '.')
                                                                            .last,
                                                                        haircolor: snapshot
                                                                            .data[
                                                                                index]
                                                                            .hairColour,
                                                                        patronus: snapshot
                                                                            .data[
                                                                                index]
                                                                            .patronus
                                                                            .toString()
                                                                            .split(
                                                                                '.')
                                                                            .last,
                                                                        actor: snapshot
                                                                            .data[index]
                                                                            .actor,
                                                                        image: snapshot.data[index].image,
                                                                        name: snapshot.data[index].name)));
                                                          },
                                                          child: RavenclawCharacterCard(
                                                              characters:
                                                                  snapshot.data[
                                                                      index]),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              );
                                            },
                                          )),
                                    );
                                  });
                            }
                          }
                        },
                      )
                    ]),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
