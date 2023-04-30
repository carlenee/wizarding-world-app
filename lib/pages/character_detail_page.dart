import 'package:flutter/material.dart';
import 'package:wizarding_world/app_theme.dart';

class CharacterDetailPage extends StatelessWidget {
  final String house;
  final String dob;
  final String eyecolor;
  final String haircolor;
  final String patronus;
  final String actor;
  final String image;
  final String name;

  const CharacterDetailPage(
      {super.key,
      required this.house,
      required this.dob,
      required this.eyecolor,
      required this.haircolor,
      required this.patronus,
      required this.actor,
      required this.image,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.beige,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            name,
            style: const TextStyle(
              fontFamily: 'WizardingWorld',
              fontSize: 30,
            ),
          ),
          toolbarHeight: 100,
          backgroundColor: AppTheme.hufflePuffDarkBrown,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image(
                  image: ResizeImage(NetworkImage(image),
                      height: 300, width: 220)),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    border: TableBorder.all(
                        color: AppTheme.hufflePuffLightBrown, width: 2),
                    columnWidths: const {
                      0: FlexColumnWidth(50),
                      1: FlexColumnWidth(50),
                    },
                    children: [
                      TableRow(children: [
                        const Text(
                          'House',
                          style: TextStyle(
                              fontFamily: 'WizardingWorld',
                              fontSize: 18,
                              color: AppTheme.hufflePuffDarkBrown),
                        ),
                        Text(
                          house,
                          style: const TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 15,
                              color: AppTheme.hufflePuffDarkBrown),
                        )
                      ]),
                      TableRow(children: [
                        const Text(
                          'Date of Birth',
                          style: TextStyle(
                              fontFamily: 'WizardingWorld',
                              fontSize: 18,
                              color: AppTheme.hufflePuffDarkBrown),
                        ),
                        Text(
                          dob,
                          style: const TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 15,
                              color: AppTheme.hufflePuffDarkBrown),
                        )
                      ]),
                      TableRow(children: [
                        const Text(
                          'Eye Colour',
                          style: TextStyle(
                              fontFamily: 'WizardingWorld',
                              fontSize: 18,
                              color: AppTheme.hufflePuffDarkBrown),
                        ),
                        Text(
                          eyecolor,
                          style: const TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 15,
                              color: AppTheme.hufflePuffDarkBrown),
                        )
                      ]),
                      TableRow(children: [
                        const Text(
                          'Hair Colour',
                          style: TextStyle(
                              fontFamily: 'WizardingWorld',
                              fontSize: 18,
                              color: AppTheme.hufflePuffDarkBrown),
                        ),
                        Text(
                          haircolor,
                          style: const TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 15,
                              color: AppTheme.hufflePuffDarkBrown),
                        )
                      ]),
                      TableRow(children: [
                        const Text(
                          'Patronus',
                          style: TextStyle(
                              fontFamily: 'WizardingWorld',
                              fontSize: 18,
                              color: AppTheme.hufflePuffDarkBrown),
                        ),
                        Text(
                          patronus,
                          style: const TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 15,
                              color: AppTheme.hufflePuffDarkBrown),
                        )
                      ]),
                      TableRow(children: [
                        const Text(
                          'Played by',
                          style: TextStyle(
                              fontFamily: 'WizardingWorld',
                              fontSize: 18,
                              color: AppTheme.hufflePuffDarkBrown),
                        ),
                        Text(
                          actor,
                          style: const TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 15,
                              color: AppTheme.hufflePuffDarkBrown),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
