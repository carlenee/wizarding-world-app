import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final dynamic padding;
  final Color color1;
  final Color color2;
  const TopContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.child,
      required this.padding, required this.color1, required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
           gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [color1, color2],
          ),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(40.0),
          )),
      height: height,
      width: width,
      child: child,
    );
  }
}
