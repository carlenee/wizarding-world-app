import 'package:flutter/material.dart';
import 'package:wizarding_world/model/slytherin_character.dart';

class SlytherinCharacterCard extends StatelessWidget {
  final SlytherinCharacters characters;

  const SlytherinCharacterCard({Key? key, required this.characters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: 32.0,
          left: 6.0,
          right: 6.0,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            // color: Colors.redAccent,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 20), blurRadius: 10.0),
            ],
            image: DecorationImage(
                image: NetworkImage(characters.image), fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
