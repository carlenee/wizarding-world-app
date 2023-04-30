import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:wizarding_world/app_theme.dart';
import 'package:wizarding_world/model/about_me.dart';
import 'package:wizarding_world/pages/about_detail_page.dart';

import '../widget/custom_card.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [AppTheme.slytherinGreen, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.9])),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            InkWell(
              child: SizedBox(
                height: 600,
                child: Swiper(
                  itemCount: AboutMe.aboutMeList.length,
                  itemWidth: MediaQuery.of(context).size.width,
                  itemHeight: MediaQuery.of(context).size.height,
                  layout: SwiperLayout.TINDER,
                  pagination: const SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                          color: AppTheme.slytherinDarkGreen,
                          activeColor: Colors.white,
                          activeSize: 12,
                          space: 4)),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (context, animation,
                                        secondaryAnimation) =>
                                    AboutMeDetailPage(
                                        aboutMe: AboutMe.aboutMeList[index])));
                      },
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 100,
                              ),
                              CustomCard(
                                name: AboutMe.aboutMeList[index].name,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Hero(
                                tag: AboutMe.aboutMeList[index].position,
                                child: Image.asset(
                                    AboutMe.aboutMeList[index].iconImage)),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            )
          ],
        )),
      ),
    );
  }
}
