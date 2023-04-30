import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String image;

  const MovieCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 32.0,
          left: 8.0,
          right: 8.0,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            // color: Colors.redAccent,
            borderRadius: BorderRadius.circular(16.0),

            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
