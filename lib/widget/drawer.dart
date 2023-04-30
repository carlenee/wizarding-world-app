import 'package:flutter/material.dart';
import 'package:wizarding_world/pages/gryffindor_character_page.dart';
import 'package:wizarding_world/pages/movie_pages.dart';
import 'package:wizarding_world/pages/profile_page.dart';

import '../main.dart';

class DrawerClass extends StatelessWidget {
  DrawerClass(this.currentPage);
  final String currentPage;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          // Adding clickable menu
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyHomePage(
                          title: '',
                        )),
              );
            },
          ),

          ListTile(
            title: const Text('Developer'),
            onTap: () {
              // Routing the menu to the form page

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),

          ListTile(
            title: const Text('Movies'),
            onTap: () {
              // Routing the menu to the form page

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MovieList()),
              );
            },
          ),
        ],
      ),
    );
  }
}
