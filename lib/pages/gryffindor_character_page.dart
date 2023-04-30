import 'package:flutter/material.dart';
import 'package:wizarding_world/app_theme.dart';
import 'package:wizarding_world/pages/character_detail_page.dart';
import 'package:wizarding_world/utils/fetch_griff_character.dart';
import 'package:wizarding_world/widget/character_card.dart';
import 'package:wizarding_world/widget/drawer.dart';
import 'package:wizarding_world/widget/top_container.dart';
import 'package:card_swiper/card_swiper.dart';

class GryffindorCharacterPage extends StatefulWidget {
  const GryffindorCharacterPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GryffindorCharacterPageState();
}

class _GryffindorCharacterPageState extends State<GryffindorCharacterPage> {
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
                      color1: AppTheme.gryffindorDarkRed,
                      color2: AppTheme.gryffindorGold,
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
                                      'Gryffindor Character',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 25.0,
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
                        future: getGryffindorCharacters(),
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
                                  itemCount: snapshot.data!.length - 46,
                                  itemBuilder: (_, i) {
                                    return InkWell(
                                      child: SizedBox(
                                          height: 600,
                                          child: Swiper(
                                            itemCount:
                                                snapshot.data!.length - 37,
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
                                              color: AppTheme.gryffindorDarkRed,
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
                                                                            'Gryffindor',
                                                                        dob: snapshot
                                                                            .data[
                                                                                index]
                                                                            .dateOfBirth,
                                                                        eyecolor: snapshot
                                                                            .data[
                                                                                index]
                                                                            .eyeColour,
                                                                        haircolor: snapshot
                                                                            .data[
                                                                                index]
                                                                            .hairColour,
                                                                        patronus: snapshot
                                                                            .data[
                                                                                index]
                                                                            .patronus,
                                                                        actor: snapshot
                                                                            .data[
                                                                                index]
                                                                            .actor,
                                                                        image: snapshot
                                                                            .data[
                                                                                index]
                                                                            .image,
                                                                        name: snapshot
                                                                            .data[index]
                                                                            .name)));
                                                          },
                                                          child: CharacterCard(
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
