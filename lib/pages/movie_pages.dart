import 'package:flutter/material.dart';
import 'package:wizarding_world/app_theme.dart';
import 'package:wizarding_world/model/movie_model.dart';
import 'package:wizarding_world/pages/movie_detail_page.dart';
import 'package:wizarding_world/widget/drawer.dart';
import 'package:wizarding_world/widget/hp_movie_card.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  List<HarryPotterMovie> movies = HarryPotterMovie.hpMovie;
  late HarryPotterMovie movie;

  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: movies.map((movie) {
        var index = movies.indexOf(movie);
        return Container(
          width: 7.0,
          height: 7.0,
          margin: const EdgeInsets.symmetric(horizontal: 6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index
                ? AppTheme.gryffindorDarkRed
                : AppTheme.slytherinDarkGreen,
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerClass(''),
      backgroundColor: AppTheme.beige,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Spacer(),
          // ignore: sized_box_for_whitespace
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
              image: ResizeImage(AssetImage("assets/images/logo.png"),
                  width: 200, height: 150)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Opacity(
                  opacity: currentPage == index ? 1.0 : 0.8,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MovieDetailPage(
                                  image: movies[index].image,
                                  title: movies[index].title,
                                  synopsis: movies[index].synopsis)));
                    },
                    child: MovieCard(image: movies[index].image),
                  ),
                );
              },
              itemCount: movies.length,
              controller: PageController(initialPage: 0, viewportFraction: 0.8),
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
          updateIndicators(),
        ],
      ),
    );
  }
}
