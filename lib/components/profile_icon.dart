import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  final String image;
  final double height;
  final double width;

  ProfileIcon(this.image, {this.height = 40, this.width = 40});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: height == 40 ? BorderRadius.circular(15) : BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
    );
  }
}
