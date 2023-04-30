import 'package:flutter/material.dart';
import 'package:wizarding_world/model/hufflepuff_character.dart';

class HufflepuffCharacterCard extends StatelessWidget {
  final HufflepuffCharacters characters;

  const HufflepuffCharacterCard({Key? key, required this.characters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 32.0,
          left: 6.0,
          right: 6.0,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 20), blurRadius: 10.0),
            ],
            image: DecorationImage(
                image: NetworkImage(characters.image), fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Container(
              //     width: 44,
              //     height: 44,
              //     child: Image.network(
              //       characters.image,
              //       fit: BoxFit.contain,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
